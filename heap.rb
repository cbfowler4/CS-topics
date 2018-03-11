

class MinHeap
  include HeapUtil

  def initialize()
    @heap = [];
  end

  def removeMin()
    min = @heap[0]
    @heap[0] = @heap.last
    @heap.pop
    heapifyDown()
    min
  end

  def add(el)
    @heap.push(el)
    heapifyUp()
  end


  private

  def swap(from, to)
    @heap[from], @heap[to] = @heap[to], @heap[from]
  end

  def heapifyUp()
    activeIdx = @heap.length-1;
    while @heap[activeIdx] > parent[activeIdx]
      swap(activeIdx, getParentIndex)
    end
  end

  def heapifyDown()
    activeIdx = 0;
    while @heap[activeIdx] > leftChild[activeIdx] || @heap[activeIdx] > leftChild[activeIdx]
      if @heap[activeIdx] > leftChild[activeIdx]
        swap(activeIdx, getLeftChildIndex)
      else
        swap(activeIdx, getRightChildIndex)
      end
    end
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
