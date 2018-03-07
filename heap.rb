

class MinHeap
  include HeapUtil

  def initialize()
    @heap = [];
  end

  def removeMin(index)
  end

  def add(el)
  end


  private

  def swap(from, to)
    
  end

  def heapifyUp()
  end

  def heapifyDown()
  end

end




module HeapUtil
  def getLeftChildIndex(index)
    2*index+1
  end

  def getRightChildIndex(index)
    2*index+2
  end

  def getParentIndex(index)
    (index-1)/2
  end

  def hasLeftChild?(index)
    getLeftChildIndex(index) > @heap.length - 1
  end

  def hasRightChild?(index)
    getRightChildIndex(index) > @heap.length - 1
  end

  def hasParent?(index)
    index != 0
  end

  def leftChild(index)
    hasLeftChild?(index) ? @heap[getLeftChildIndex(index)] : false
  end

  def rightChild(index)
    hasRightChild?(index) ? @heap[getRightChildIndex(index)] : false
  end

  def parent(index)
    hasParent?(index) ? @heap[getParentIndex(index)] : false
  end

  def peek
    @heap[0]
  end
end
