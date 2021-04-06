lbl_8000A160:
/* 8000A160  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8000A164  7C 08 02 A6 */	mflr r0
/* 8000A168  90 01 00 44 */	stw r0, 0x44(r1)
/* 8000A16C  39 61 00 40 */	addi r11, r1, 0x40
/* 8000A170  48 35 80 65 */	bl _savegpr_27
/* 8000A174  C0 04 00 00 */	lfs f0, 0(r4)
/* 8000A178  FC 00 00 1E */	fctiwz f0, f0
/* 8000A17C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8000A180  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8000A184  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 8000A188  7C 1F 07 34 */	extsh r31, r0
/* 8000A18C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8000A190  FC 00 00 1E */	fctiwz f0, f0
/* 8000A194  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8000A198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000A19C  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 8000A1A0  7C 05 07 34 */	extsh r5, r0
/* 8000A1A4  7C A0 FE 70 */	srawi r0, r5, 0x1f
/* 8000A1A8  7C A0 00 78 */	andc r0, r5, r0
/* 8000A1AC  7C 1E 07 34 */	extsh r30, r0
/* 8000A1B0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8000A1B4  FC 00 00 1E */	fctiwz f0, f0
/* 8000A1B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8000A1BC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000A1C0  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 8000A1C4  7C 1D 07 34 */	extsh r29, r0
/* 8000A1C8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8000A1CC  FC 00 00 1E */	fctiwz f0, f0
/* 8000A1D0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8000A1D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000A1D8  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 8000A1DC  7C 1C 07 34 */	extsh r28, r0
/* 8000A1E0  83 6D 86 50 */	lwz r27, mFrameBufferTex__13mDoGph_gInf_c(r13)
/* 8000A1E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8000A1E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8000A1EC  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 8000A1F0  28 00 00 00 */	cmplwi r0, 0
/* 8000A1F4  40 82 00 84 */	bne lbl_8000A278
/* 8000A1F8  7C A0 07 35 */	extsh. r0, r5
/* 8000A1FC  40 80 00 30 */	bge lbl_8000A22C
/* 8000A200  7F 9C 2A 14 */	add r28, r28, r5
/* 8000A204  7C 05 00 D0 */	neg r0, r5
/* 8000A208  7C 00 0E 70 */	srawi r0, r0, 1
/* 8000A20C  38 60 01 30 */	li r3, 0x130
/* 8000A210  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8000A214  80 AD 86 4C */	lwz r5, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 8000A218  88 A5 00 00 */	lbz r5, 0(r5)
/* 8000A21C  38 C0 00 00 */	li r6, 0
/* 8000A220  38 E0 00 00 */	li r7, 0
/* 8000A224  48 35 39 F9 */	bl GXGetTexBufferSize
/* 8000A228  7F 7B 1A 14 */	add r27, r27, r3
lbl_8000A22C:
/* 8000A22C  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8000A230  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 8000A234  57 A5 04 3E */	clrlwi r5, r29, 0x10
/* 8000A238  57 86 04 3E */	clrlwi r6, r28, 0x10
/* 8000A23C  48 35 28 45 */	bl GXSetTexCopySrc
/* 8000A240  7F A0 0E 70 */	srawi r0, r29, 1
/* 8000A244  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8000A248  7F 80 07 34 */	extsh r0, r28
/* 8000A24C  7C 00 0E 70 */	srawi r0, r0, 1
/* 8000A250  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8000A254  80 AD 86 4C */	lwz r5, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 8000A258  88 A5 00 00 */	lbz r5, 0(r5)
/* 8000A25C  38 C0 00 01 */	li r6, 1
/* 8000A260  48 35 28 D1 */	bl GXSetTexCopyDst
/* 8000A264  7F 63 DB 78 */	mr r3, r27
/* 8000A268  38 80 00 00 */	li r4, 0
/* 8000A26C  48 35 32 01 */	bl GXCopyTex
/* 8000A270  48 35 21 05 */	bl GXPixModeSync
/* 8000A274  48 35 43 F1 */	bl GXInvalidateTexAll
lbl_8000A278:
/* 8000A278  39 61 00 40 */	addi r11, r1, 0x40
/* 8000A27C  48 35 7F A5 */	bl _restgpr_27
/* 8000A280  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8000A284  7C 08 03 A6 */	mtlr r0
/* 8000A288  38 21 00 40 */	addi r1, r1, 0x40
/* 8000A28C  4E 80 00 20 */	blr 
