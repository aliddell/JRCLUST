function binData = mmapBin(filename, binShape, dataType)
    %MMAPBIN Open a memory map of a .jrc bin file
    if exist(filename, 'file')
        binData = memmapfile(filename, 'Offset', 0, ...
                             'Format', {dataType, binShape, 'Data'}, ...
                             'Writable', false);
    else
        binData = [];
    end
end