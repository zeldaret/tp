
from .demangle import *

def demangle_test():
    """
    Test a few problematic mangled names. 
    """

    import rich
    import logging
    import sys

    from rich.console import Console
    from rich.logging import RichHandler

    CONSOLE = Console()

    logging.basicConfig(
        level="NOTSET",
        format="%(message)s",
        datefmt="[%X]",
        handlers=[RichHandler(console=CONSOLE, rich_tracebacks=True)]
    )

    LOG = logging.getLogger("rich")
    LOG.setLevel(logging.INFO)

    LOG.info("---------------------------------------------------------")
    LOG.info("      C++ demangler for Metrowerks")
    LOG.info("---------------------------------------------------------")

    def dm(name):
        LOG.info("demangle:")
        LOG.info(f"\t{name}")
        try:
            p = ParseCtx(name)
            p.demangle()
            LOG.info(f"\t{p.to_str()}")
            LOG.info("\t'OK'")
        except ParseError as e:
            LOG.error(e)
            LOG.error(p.func_name)
            LOG.error(p.class_name)
            LOG.error(p.mangled)
            LOG.error(p.index)
            LOG.error(p.mangled[p.index:])
            LOG.error(p)
            CONSOLE.print_exception()
            sys.exit(1)

    dm("mDoExt_J3DModel__create__FP12J3DModelDataUlUl")
    dm("JAISeMgr_startID___5JAISeF10JAISoundIDPCQ29JGeometry8TVec3<f>P11JAIAudience")
    dm("checkProcess__18daTag_BottleItem_cFM18daTag_BottleItem_cFPCvPvPv_i")
    dm("_unresolved")
    dm("__sinit_d_a_obj_heavySw_cpp")
    dm("__dt__26__partial_array_destructorFv")
    dm("mDoAud_Create__Fv")
    dm("OSPanic")
    dm("countUsed__FP10JKRExpHeap")
    dm("OSVAttention__FPCcP16__va_list_struct")
    dm("mDoPrintf_vprintf_Interrupt__FPCcP16__va_list_struct")
    dm("mDoPrintf_vprintf_Thread__FPCcP16__va_list_struct")
    dm("mDoPrintf_vprintf__FPCcP16__va_list_struct")
    dm("dKy_Draw__FP17sub_kankyo__class")
    dm("dKy_Execute__FP17sub_kankyo__class")
    dm("dKy_IsDelete__FP17sub_kankyo__class")
    dm("dKy_Delete__FP17sub_kankyo__class")
    dm("__dt__26__partial_array_destructorFv")
    dm("setJSG_ID___Q214JStudio_JStage14TAdaptor_actorFMQ26JStage6TActorFPCvPvUl_vQ37JStudio4data15TEOperationDataPCvUl")
    dm("set__Q23std16__bitset_base<8>FUlb")
    dm("reset__Q23std16__bitset_base<8>FUl")
    dm("test__Q23std16__bitset_base<8>CFUl")
    dm("__ct__Q23std16__bitset_base<8>Fv")
    dm("panic_f_va__12JUTExceptionFPCciPCcP16__va_list_struct")
    dm("printSub__14JUTDirectPrintFUsUsPCcP16__va_list_structb")
    dm("TRK__write_aram")
    dm("TRK__read_aram")
    dm("JAISeMgr_startID___5JAISeF10JAISoundIDPCQ29JGeometry8TVec3<f>P11JAIAudience")
    dm("__dt__83J3DMtxCalcNoAnm<32J3DMtxCalcCalcTransformSoftimage,29J3DMtxCalcJ3DSysInitSoftimage>Fv")
    dm("JSUConvertOffsetToPtr<19J3DMaterialInitData>__FPCvPCv")
    dm("__dt__21JSUList<10JUTGamePad>Fv")
    dm("setAnmTransform__114J3DMtxCalcAnimation<64J3DMtxCalcAnimationAdaptorDefault<27J3DMtxCalcCalcTransformMaya>,24J3DMtxCalcJ3DSysInitMaya>FP15J3DAnmTransform")
    dm("__ct__6JAISeqFP9JAISeqMgrP28JAISoundStrategyMgr<6JAISeq>")
    dm("__ct__Q23std16__bitset_base<8>Fv")
    dm("append__16JAUSeqDataBlocksFP26JSULink<15JAUSeqDataBlock>")
    dm("getBank__17JASBankTable<256>CFUl")
    dm("reset__Q23std16__bitset_base<8>FUl")
    dm("JSUConvertOffsetToPtr<A3_A4_f>__FPCvPCv")
    dm("newStreamAram__26JAUStreamStaticAramMgr_<1>FPUl")
    dm("find_if<Q37JGadget37TLinkList<Q37JStudio3ctb7TObject,-12>8iterator,Q37JStudio6object18TPRObject_ID_equal>__3stdFQ37JGadget37TLinkList<Q37JStudio3ctb7TObject,-12>8iteratorQ37JGadget37TLinkList<Q37JStudio3ctb7TObject,-12>8iteratorQ37JStudio6object18TPRObject_ID_equal")
    dm("getMyActIdx__16dEvent_manager_cFiPCPCciii")
    dm("insert__Q27JGadget20TVector_pointer_voidFPPvRCPv")
    dm("setString__17dMsgScrn3Select_cFPcPcPc")
    dm("chkAction__13daNpc_yamiS_cFM13daNpc_yamiS_cFPCvPvPv_i")

    sys.exit()


