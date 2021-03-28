lbl_80CBD964:
/* 80CBD964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD968  7C 08 02 A6 */	mflr r0
/* 80CBD96C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBD974  7C 7F 1B 78 */	mr r31, r3
/* 80CBD978  38 7F 06 18 */	addi r3, r31, 0x618
/* 80CBD97C  3C 80 80 CC */	lis r4, l_arcName@ha
/* 80CBD980  38 84 DB 40 */	addi r4, r4, l_arcName@l
/* 80CBD984  80 84 00 00 */	lwz r4, 0(r4)
/* 80CBD988  4B 36 F6 80 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CBD98C  88 1F 07 98 */	lbz r0, 0x798(r31)
/* 80CBD990  28 00 00 00 */	cmplwi r0, 0
/* 80CBD994  41 82 00 10 */	beq lbl_80CBD9A4
/* 80CBD998  38 00 00 00 */	li r0, 0
/* 80CBD99C  3C 60 80 CC */	lis r3, data_80CBDBE8@ha
/* 80CBD9A0  98 03 DB E8 */	stb r0, data_80CBDBE8@l(r3)
lbl_80CBD9A4:
/* 80CBD9A4  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 80CBD9A8  4B 60 06 50 */	b deleteObject__14Z2SoundObjBaseFv
/* 80CBD9AC  38 60 00 01 */	li r3, 1
/* 80CBD9B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBD9B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBD9B8  7C 08 03 A6 */	mtlr r0
/* 80CBD9BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBD9C0  4E 80 00 20 */	blr 
