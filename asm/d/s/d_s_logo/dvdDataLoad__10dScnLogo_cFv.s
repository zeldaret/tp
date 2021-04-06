lbl_80257FEC:
/* 80257FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257FF0  7C 08 02 A6 */	mflr r0
/* 80257FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257FF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80257FFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80258000  7C 7F 1B 78 */	mr r31, r3
/* 80258004  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80258008  38 C3 9F FC */	addi r6, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 8025800C  38 66 00 07 */	addi r3, r6, 7
/* 80258010  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80258014  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80258018  3F C4 00 02 */	addis r30, r4, 2
/* 8025801C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80258020  7F C4 F3 78 */	mr r4, r30
/* 80258024  38 A0 00 80 */	li r5, 0x80
/* 80258028  38 C6 00 0E */	addi r6, r6, 0xe
/* 8025802C  38 E0 00 00 */	li r7, 0
/* 80258030  39 00 00 00 */	li r8, 0
/* 80258034  4B DE 40 45 */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 80258038  80 6D 86 B4 */	lwz r3, archiveHeap(r13)
/* 8025803C  81 83 00 00 */	lwz r12, 0(r3)
/* 80258040  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80258044  7D 89 03 A6 */	mtctr r12
/* 80258048  4E 80 04 21 */	bctrl 
/* 8025804C  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80258050  38 C3 9F FC */	addi r6, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258054  38 66 00 1B */	addi r3, r6, 0x1b
/* 80258058  7F C4 F3 78 */	mr r4, r30
/* 8025805C  38 A0 00 80 */	li r5, 0x80
/* 80258060  38 C6 00 0E */	addi r6, r6, 0xe
/* 80258064  38 E0 00 00 */	li r7, 0
/* 80258068  39 00 00 00 */	li r8, 0
/* 8025806C  4B DE 40 0D */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 80258070  4B DB 6D C1 */	bl mDoExt_getJ2dHeap__Fv
/* 80258074  7C 66 1B 78 */	mr r6, r3
/* 80258078  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 8025807C  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258080  38 63 00 21 */	addi r3, r3, 0x21
/* 80258084  38 80 00 00 */	li r4, 0
/* 80258088  38 A0 00 02 */	li r5, 2
/* 8025808C  4B DB E1 55 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258090  90 7F 02 20 */	stw r3, 0x220(r31)
/* 80258094  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80258098  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 8025809C  38 63 00 3A */	addi r3, r3, 0x3a
/* 802580A0  38 80 00 00 */	li r4, 0
/* 802580A4  38 A0 00 02 */	li r5, 2
/* 802580A8  38 C0 00 00 */	li r6, 0
/* 802580AC  4B DB E1 35 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 802580B0  90 7F 02 24 */	stw r3, 0x224(r31)
/* 802580B4  4B DB 6D 7D */	bl mDoExt_getJ2dHeap__Fv
/* 802580B8  7C 66 1B 78 */	mr r6, r3
/* 802580BC  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 802580C0  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 802580C4  38 63 00 50 */	addi r3, r3, 0x50
/* 802580C8  38 80 00 00 */	li r4, 0
/* 802580CC  38 A0 00 02 */	li r5, 2
/* 802580D0  4B DB E1 11 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 802580D4  90 7F 02 2C */	stw r3, 0x22c(r31)
/* 802580D8  4B DB 6D 59 */	bl mDoExt_getJ2dHeap__Fv
/* 802580DC  7C 66 1B 78 */	mr r6, r3
/* 802580E0  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 802580E4  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 802580E8  38 63 00 68 */	addi r3, r3, 0x68
/* 802580EC  38 80 00 00 */	li r4, 0
/* 802580F0  38 A0 00 02 */	li r5, 2
/* 802580F4  4B DB E0 ED */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 802580F8  90 7F 02 30 */	stw r3, 0x230(r31)
/* 802580FC  4B DB 6D 35 */	bl mDoExt_getJ2dHeap__Fv
/* 80258100  7C 66 1B 78 */	mr r6, r3
/* 80258104  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80258108  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 8025810C  38 63 00 80 */	addi r3, r3, 0x80
/* 80258110  38 80 00 00 */	li r4, 0
/* 80258114  38 A0 00 02 */	li r5, 2
/* 80258118  4B DB E0 C9 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 8025811C  90 7F 02 34 */	stw r3, 0x234(r31)
/* 80258120  4B DB 6D 11 */	bl mDoExt_getJ2dHeap__Fv
/* 80258124  7C 66 1B 78 */	mr r6, r3
/* 80258128  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 8025812C  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258130  38 63 00 98 */	addi r3, r3, 0x98
/* 80258134  38 80 00 00 */	li r4, 0
/* 80258138  38 A0 00 02 */	li r5, 2
/* 8025813C  4B DB E0 A5 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258140  90 7F 02 3C */	stw r3, 0x23c(r31)
/* 80258144  4B DB 6C ED */	bl mDoExt_getJ2dHeap__Fv
/* 80258148  7C 66 1B 78 */	mr r6, r3
/* 8025814C  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80258150  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258154  38 63 00 B1 */	addi r3, r3, 0xb1
/* 80258158  38 80 00 00 */	li r4, 0
/* 8025815C  38 A0 00 02 */	li r5, 2
/* 80258160  4B DB E0 81 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258164  90 7F 02 40 */	stw r3, 0x240(r31)
/* 80258168  4B DB 6C C9 */	bl mDoExt_getJ2dHeap__Fv
/* 8025816C  7C 66 1B 78 */	mr r6, r3
/* 80258170  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80258174  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258178  38 63 00 C9 */	addi r3, r3, 0xc9
/* 8025817C  38 80 00 00 */	li r4, 0
/* 80258180  38 A0 00 02 */	li r5, 2
/* 80258184  4B DB E0 5D */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258188  90 7F 02 48 */	stw r3, 0x248(r31)
/* 8025818C  4B DB 6C A5 */	bl mDoExt_getJ2dHeap__Fv
/* 80258190  7C 66 1B 78 */	mr r6, r3
/* 80258194  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80258198  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 8025819C  38 63 00 E4 */	addi r3, r3, 0xe4
/* 802581A0  38 80 00 00 */	li r4, 0
/* 802581A4  38 A0 00 02 */	li r5, 2
/* 802581A8  4B DB E0 39 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 802581AC  90 7F 02 4C */	stw r3, 0x24c(r31)
/* 802581B0  4B DB 6C 81 */	bl mDoExt_getJ2dHeap__Fv
/* 802581B4  7C 66 1B 78 */	mr r6, r3
/* 802581B8  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 802581BC  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 802581C0  38 63 00 FE */	addi r3, r3, 0xfe
/* 802581C4  38 80 00 00 */	li r4, 0
/* 802581C8  38 A0 00 02 */	li r5, 2
/* 802581CC  4B DB E0 15 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 802581D0  90 7F 02 50 */	stw r3, 0x250(r31)
/* 802581D4  4B DB 6C 5D */	bl mDoExt_getJ2dHeap__Fv
/* 802581D8  7C 66 1B 78 */	mr r6, r3
/* 802581DC  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 802581E0  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 802581E4  38 63 01 15 */	addi r3, r3, 0x115
/* 802581E8  38 80 00 00 */	li r4, 0
/* 802581EC  38 A0 00 02 */	li r5, 2
/* 802581F0  4B DB DF F1 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 802581F4  90 7F 02 58 */	stw r3, 0x258(r31)
/* 802581F8  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 802581FC  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258200  38 63 01 30 */	addi r3, r3, 0x130
/* 80258204  38 80 00 00 */	li r4, 0
/* 80258208  38 A0 00 01 */	li r5, 1
/* 8025820C  38 C0 00 00 */	li r6, 0
/* 80258210  4B DB DF D1 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258214  90 7F 02 5C */	stw r3, 0x25c(r31)
/* 80258218  4B DB 6C 19 */	bl mDoExt_getJ2dHeap__Fv
/* 8025821C  7C 66 1B 78 */	mr r6, r3
/* 80258220  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80258224  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258228  38 63 01 46 */	addi r3, r3, 0x146
/* 8025822C  38 80 00 00 */	li r4, 0
/* 80258230  38 A0 00 02 */	li r5, 2
/* 80258234  4B DB DF AD */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258238  90 7F 02 60 */	stw r3, 0x260(r31)
/* 8025823C  4B DB 6B F5 */	bl mDoExt_getJ2dHeap__Fv
/* 80258240  7C 66 1B 78 */	mr r6, r3
/* 80258244  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80258248  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 8025824C  38 63 01 5D */	addi r3, r3, 0x15d
/* 80258250  38 80 00 00 */	li r4, 0
/* 80258254  38 A0 00 02 */	li r5, 2
/* 80258258  4B DB DF 89 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 8025825C  90 7F 02 64 */	stw r3, 0x264(r31)
/* 80258260  4B DB 6B D1 */	bl mDoExt_getJ2dHeap__Fv
/* 80258264  7C 66 1B 78 */	mr r6, r3
/* 80258268  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 8025826C  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258270  38 63 01 76 */	addi r3, r3, 0x176
/* 80258274  38 80 00 00 */	li r4, 0
/* 80258278  38 A0 00 02 */	li r5, 2
/* 8025827C  4B DB DF 65 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258280  90 7F 02 68 */	stw r3, 0x268(r31)
/* 80258284  4B DB 6B AD */	bl mDoExt_getJ2dHeap__Fv
/* 80258288  7C 66 1B 78 */	mr r6, r3
/* 8025828C  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80258290  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258294  38 63 01 8F */	addi r3, r3, 0x18f
/* 80258298  38 80 00 00 */	li r4, 0
/* 8025829C  38 A0 00 02 */	li r5, 2
/* 802582A0  4B DB DF 41 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 802582A4  90 7F 02 6C */	stw r3, 0x26c(r31)
/* 802582A8  4B DB 6B 89 */	bl mDoExt_getJ2dHeap__Fv
/* 802582AC  7C 66 1B 78 */	mr r6, r3
/* 802582B0  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 802582B4  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 802582B8  38 63 01 A8 */	addi r3, r3, 0x1a8
/* 802582BC  38 80 00 00 */	li r4, 0
/* 802582C0  38 A0 00 02 */	li r5, 2
/* 802582C4  4B DB DF 1D */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 802582C8  90 7F 02 70 */	stw r3, 0x270(r31)
/* 802582CC  4B DB 6B 65 */	bl mDoExt_getJ2dHeap__Fv
/* 802582D0  7C 66 1B 78 */	mr r6, r3
/* 802582D4  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 802582D8  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 802582DC  38 63 01 C1 */	addi r3, r3, 0x1c1
/* 802582E0  38 80 00 00 */	li r4, 0
/* 802582E4  38 A0 00 02 */	li r5, 2
/* 802582E8  4B DB DE F9 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 802582EC  90 7F 02 74 */	stw r3, 0x274(r31)
/* 802582F0  4B DB 6B 41 */	bl mDoExt_getJ2dHeap__Fv
/* 802582F4  7C 66 1B 78 */	mr r6, r3
/* 802582F8  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 802582FC  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258300  38 63 01 DB */	addi r3, r3, 0x1db
/* 80258304  38 80 00 00 */	li r4, 0
/* 80258308  38 A0 00 02 */	li r5, 2
/* 8025830C  4B DB DE D5 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258310  90 7F 02 78 */	stw r3, 0x278(r31)
/* 80258314  4B DB 6B 1D */	bl mDoExt_getJ2dHeap__Fv
/* 80258318  7C 66 1B 78 */	mr r6, r3
/* 8025831C  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 80258320  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258324  38 63 01 F4 */	addi r3, r3, 0x1f4
/* 80258328  38 80 00 00 */	li r4, 0
/* 8025832C  38 A0 00 02 */	li r5, 2
/* 80258330  4B DB DE B1 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258334  90 7F 02 7C */	stw r3, 0x27c(r31)
/* 80258338  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 8025833C  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258340  38 63 02 0D */	addi r3, r3, 0x20d
/* 80258344  38 80 00 00 */	li r4, 0
/* 80258348  38 A0 00 01 */	li r5, 1
/* 8025834C  38 C0 00 00 */	li r6, 0
/* 80258350  4B DB DE 91 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258354  90 7F 02 94 */	stw r3, 0x294(r31)
/* 80258358  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 8025835C  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258360  38 63 02 24 */	addi r3, r3, 0x224
/* 80258364  38 80 00 00 */	li r4, 0
/* 80258368  38 A0 00 01 */	li r5, 1
/* 8025836C  38 C0 00 00 */	li r6, 0
/* 80258370  4B DB DE 71 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258374  90 7F 02 90 */	stw r3, 0x290(r31)
/* 80258378  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 8025837C  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 80258380  38 63 02 3C */	addi r3, r3, 0x23c
/* 80258384  38 80 00 00 */	li r4, 0
/* 80258388  38 A0 00 01 */	li r5, 1
/* 8025838C  38 C0 00 00 */	li r6, 0
/* 80258390  4B DB DE 51 */	bl create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap
/* 80258394  90 7F 02 98 */	stw r3, 0x298(r31)
/* 80258398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025839C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802583A0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 802583A4  80 A3 00 08 */	lwz r5, 8(r3)
/* 802583A8  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 802583AC  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 802583B0  38 63 02 54 */	addi r3, r3, 0x254
/* 802583B4  38 80 00 00 */	li r4, 0
/* 802583B8  4B DB DF DD */	bl create__21mDoDvdThd_toMainRam_cFPCcUcP7JKRHeap
/* 802583BC  90 7F 02 9C */	stw r3, 0x29c(r31)
/* 802583C0  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 802583C4  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 802583C8  38 63 02 6D */	addi r3, r3, 0x26d
/* 802583CC  38 80 00 00 */	li r4, 0
/* 802583D0  38 A0 00 00 */	li r5, 0
/* 802583D4  4B DB DF C1 */	bl create__21mDoDvdThd_toMainRam_cFPCcUcP7JKRHeap
/* 802583D8  90 7F 02 A0 */	stw r3, 0x2a0(r31)
/* 802583DC  3C 60 80 3A */	lis r3, d_s_d_s_logo__stringBase0@ha /* 0x80399FFC@ha */
/* 802583E0  38 63 9F FC */	addi r3, r3, d_s_d_s_logo__stringBase0@l /* 0x80399FFC@l */
/* 802583E4  38 63 02 8B */	addi r3, r3, 0x28b
/* 802583E8  38 80 00 00 */	li r4, 0
/* 802583EC  38 A0 00 00 */	li r5, 0
/* 802583F0  4B DB DF A5 */	bl create__21mDoDvdThd_toMainRam_cFPCcUcP7JKRHeap
/* 802583F4  90 7F 02 A4 */	stw r3, 0x2a4(r31)
/* 802583F8  7F E3 FB 78 */	mr r3, r31
/* 802583FC  4B FF DC B9 */	bl preLoad_dyl_create__10dScnLogo_cFv
/* 80258400  7F E3 FB 78 */	mr r3, r31
/* 80258404  4B FF DD 19 */	bl preLoad_dyl__10dScnLogo_cFv
/* 80258408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025840C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80258410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80258414  7C 08 03 A6 */	mtlr r0
/* 80258418  38 21 00 10 */	addi r1, r1, 0x10
/* 8025841C  4E 80 00 20 */	blr 
