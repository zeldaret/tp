lbl_80CDBD38:
/* 80CDBD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDBD3C  7C 08 02 A6 */	mflr r0
/* 80CDBD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDBD44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDBD48  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDBD4C  7C 7F 1B 78 */	mr r31, r3
/* 80CDBD50  3C 80 80 CE */	lis r4, cNullVec__6Z2Calc@ha
/* 80CDBD54  3B C4 CC C4 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80CDBD58  4B FF FE 05 */	bl initBaseMtx__14daObjSmgDoor_cFv
/* 80CDBD5C  38 1F 05 B8 */	addi r0, r31, 0x5b8
/* 80CDBD60  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CDBD64  7F E3 FB 78 */	mr r3, r31
/* 80CDBD68  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80CDBD6C  38 9E 00 40 */	addi r4, r30, 0x40
/* 80CDBD70  C0 44 00 04 */	lfs f2, 4(r4)
/* 80CDBD74  C0 64 00 08 */	lfs f3, 8(r4)
/* 80CDBD78  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80CDBD7C  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80CDBD80  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80CDBD84  4B 33 E7 C4 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CDBD88  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80CDBD8C  3C 60 80 CE */	lis r3, lit_3722@ha
/* 80CDBD90  C0 23 CC 00 */	lfs f1, lit_3722@l(r3)
/* 80CDBD94  EC 00 08 2A */	fadds f0, f0, f1
/* 80CDBD98  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CDBD9C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80CDBDA0  EC 00 08 2A */	fadds f0, f0, f1
/* 80CDBDA4  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CDBDA8  38 00 00 20 */	li r0, 0x20
/* 80CDBDAC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CDBDB0  38 00 00 00 */	li r0, 0
/* 80CDBDB4  98 1F 05 EA */	stb r0, 0x5ea(r31)
/* 80CDBDB8  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80CDBDBC  54 00 10 3A */	slwi r0, r0, 2
/* 80CDBDC0  38 7E 00 20 */	addi r3, r30, 0x20
/* 80CDBDC4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80CDBDC8  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80CDBDCC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CDBDD0  98 1F 05 EB */	stb r0, 0x5eb(r31)
/* 80CDBDD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDBDD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDBDDC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CDBDE0  7F E4 FB 78 */	mr r4, r31
/* 80CDBDE4  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80CDBDE8  54 00 10 3A */	slwi r0, r0, 2
/* 80CDBDEC  38 BE 00 38 */	addi r5, r30, 0x38
/* 80CDBDF0  7C A5 00 2E */	lwzx r5, r5, r0
/* 80CDBDF4  38 C0 00 FF */	li r6, 0xff
/* 80CDBDF8  4B 36 B9 60 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80CDBDFC  B0 7F 05 EC */	sth r3, 0x5ec(r31)
/* 80CDBE00  38 60 00 01 */	li r3, 1
/* 80CDBE04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDBE08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDBE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDBE10  7C 08 03 A6 */	mtlr r0
/* 80CDBE14  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDBE18  4E 80 00 20 */	blr 
