

function mergeSort(array) {
  if (array.length <= 1) {
    return array;
  }

  const mid = array.length/2;
  const left = array.slice(0, mid);
  const right = array.slice(mid, array.length);

  return merge(mergeSort(left), mergeSort(right));
}

function merge(left, right) {
  const sortedArray = [];
  while (left.length !== 0 && right.length !== 0) {
    switch (left[0]<right[0]) {
      case true:
        sortedArray.push(left[0]);
        left = left.slice(1);
        break;
      default:
        sortedArray.push(right[0]);
        right = right.slice(1);
        break;
    }
  }

  return sortedArray.concat(left).concat(right);
}

function quickSort(array) {
  if (array.length <= 1) {
    return array;
  }

  const
    pivot = array[0],
    left = [],
    right = [];

  array.slice(1).forEach((el) => {
    if (el > pivot) {
      right.push(el);
    } else {
      left.push(el);
    }
  });

  return quickSort(left).concat([pivot]).concat(quickSort(right));
}

module.exports = {
  'mergeSort': mergeSort,
  'quickSort': quickSort};
