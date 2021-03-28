lbl_80C68FA0:
/* 80C68FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68FA4  7C 08 02 A6 */	mflr r0
/* 80C68FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68FAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C68FB0  7C 7F 1B 78 */	mr r31, r3
/* 80C68FB4  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80C68FB8  90 7F 05 04 */	stw r3, 0x504(r31)
/* 80C68FBC  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C68FC0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C68FC4  4B 6D D4 EC */	b PSMTXCopy
/* 80C68FC8  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80C68FCC  54 00 08 3C */	slwi r0, r0, 1
/* 80C68FD0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C68FD4  7F E3 FB 78 */	mr r3, r31
/* 80C68FD8  3C 80 80 C7 */	lis r4, l_cull_box@ha
/* 80C68FDC  38 84 99 00 */	addi r4, r4, l_cull_box@l
/* 80C68FE0  7C 24 04 2E */	lfsx f1, r4, r0
/* 80C68FE4  7C 84 02 14 */	add r4, r4, r0
/* 80C68FE8  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C68FEC  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C68FF0  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C68FF4  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C68FF8  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80C68FFC  4B 3B 15 4C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C69000  38 80 00 00 */	li r4, 0
/* 80C69004  B0 9F 06 0C */	sth r4, 0x60c(r31)
/* 80C69008  B0 9F 06 10 */	sth r4, 0x610(r31)
/* 80C6900C  38 00 00 01 */	li r0, 1
/* 80C69010  98 1F 06 18 */	stb r0, 0x618(r31)
/* 80C69014  98 9F 06 28 */	stb r4, 0x628(r31)
/* 80C69018  90 9F 06 24 */	stw r4, 0x624(r31)
/* 80C6901C  98 9F 06 19 */	stb r4, 0x619(r31)
/* 80C69020  3C 60 80 C7 */	lis r3, lit_3713@ha
/* 80C69024  C0 03 99 58 */	lfs f0, lit_3713@l(r3)
/* 80C69028  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 80C6902C  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 80C69030  98 9F 06 29 */	stb r4, 0x629(r31)
/* 80C69034  7F E3 FB 78 */	mr r3, r31
/* 80C69038  4B FF FD A1 */	bl setMtx__16daObjLv4PRwall_cFv
/* 80C6903C  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80C69040  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C69044  38 84 00 24 */	addi r4, r4, 0x24
/* 80C69048  4B 6D D4 68 */	b PSMTXCopy
/* 80C6904C  38 60 00 01 */	li r3, 1
/* 80C69050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C69054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C69058  7C 08 03 A6 */	mtlr r0
/* 80C6905C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C69060  4E 80 00 20 */	blr 
