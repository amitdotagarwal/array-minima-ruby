#usr/bin/ruby
def findminimaUtil(arr, low, high, n)
    mid = low + (high - low)/2
 
    if ((mid == 0 or arr[mid - 1] >= arr[mid]) and (mid == n - 1 or arr[mid + 1] >= arr[mid]))
      return mid
    elsif (mid > 0 and arr[mid - 1] > arr[mid])
      return findminimaUtil(arr, low, (mid - 1), n)
    else
      return findminimaUtil(arr, (mid + 1), high, n)
    end
end
 
def findminima(arr, n) 
  return findminimaUtil(arr, 0, n - 1, n)
 end
 
# Sample Array
arr = [1, 3, 1, 4, 1, 0]
n = arr.length

print("Index of a minima point is", findminima(arr, n))