package com.slf.common.core.exception.file;

/**
 * 文件名大小限制异常类
 * 
 * @author slf
 */
public class FileSizeLimitExceededException extends FileException
{
    private static final long serialVersionUID = 1L;

    public FileSizeLimitExceededException(long defaultMaxSize)
    {
        super("upload.exceed.maxSize", new Object[] { defaultMaxSize }, "the filesize is too large");
    }
}
