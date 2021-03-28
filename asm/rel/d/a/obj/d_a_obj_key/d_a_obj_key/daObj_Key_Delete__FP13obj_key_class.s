lbl_80C40944:
/* 80C40944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C40948  7C 08 02 A6 */	mflr r0
/* 80C4094C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C40950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C40954  7C 7F 1B 78 */	mr r31, r3
/* 80C40958  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C4095C  3C 80 80 C4 */	lis r4, stringBase0@ha
/* 80C40960  38 84 10 7C */	addi r4, r4, stringBase0@l
/* 80C40964  4B 3E C6 A4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C40968  88 1F 09 B4 */	lbz r0, 0x9b4(r31)
/* 80C4096C  28 00 00 00 */	cmplwi r0, 0
/* 80C40970  41 82 00 10 */	beq lbl_80C40980
/* 80C40974  38 00 00 00 */	li r0, 0
/* 80C40978  3C 60 80 C4 */	lis r3, data_80C41138@ha
/* 80C4097C  98 03 11 38 */	stb r0, data_80C41138@l(r3)
lbl_80C40980:
/* 80C40980  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80C40984  28 00 00 00 */	cmplwi r0, 0
/* 80C40988  41 82 00 0C */	beq lbl_80C40994
/* 80C4098C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C40990  4B 67 D6 68 */	b deleteObject__14Z2SoundObjBaseFv
lbl_80C40994:
/* 80C40994  38 60 00 01 */	li r3, 1
/* 80C40998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4099C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C409A0  7C 08 03 A6 */	mtlr r0
/* 80C409A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C409A8  4E 80 00 20 */	blr 
