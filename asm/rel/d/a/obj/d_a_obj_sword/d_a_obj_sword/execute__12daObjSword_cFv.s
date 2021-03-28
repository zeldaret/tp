lbl_80CFDC1C:
/* 80CFDC1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFDC20  7C 08 02 A6 */	mflr r0
/* 80CFDC24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFDC28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFDC2C  7C 7F 1B 78 */	mr r31, r3
/* 80CFDC30  3C 60 80 D0 */	lis r3, cNullVec__6Z2Calc@ha
/* 80CFDC34  38 C3 DE 94 */	addi r6, r3, cNullVec__6Z2Calc@l
/* 80CFDC38  3C 60 80 D0 */	lis r3, data_80CFE008@ha
/* 80CFDC3C  38 A3 E0 08 */	addi r5, r3, data_80CFE008@l
/* 80CFDC40  88 05 00 00 */	lbz r0, 0(r5)
/* 80CFDC44  7C 00 07 75 */	extsb. r0, r0
/* 80CFDC48  40 82 00 58 */	bne lbl_80CFDCA0
/* 80CFDC4C  80 66 00 38 */	lwz r3, 0x38(r6)
/* 80CFDC50  80 06 00 3C */	lwz r0, 0x3c(r6)
/* 80CFDC54  90 66 00 5C */	stw r3, 0x5c(r6)
/* 80CFDC58  90 06 00 60 */	stw r0, 0x60(r6)
/* 80CFDC5C  80 06 00 40 */	lwz r0, 0x40(r6)
/* 80CFDC60  90 06 00 64 */	stw r0, 0x64(r6)
/* 80CFDC64  38 86 00 5C */	addi r4, r6, 0x5c
/* 80CFDC68  80 66 00 44 */	lwz r3, 0x44(r6)
/* 80CFDC6C  80 06 00 48 */	lwz r0, 0x48(r6)
/* 80CFDC70  90 64 00 0C */	stw r3, 0xc(r4)
/* 80CFDC74  90 04 00 10 */	stw r0, 0x10(r4)
/* 80CFDC78  80 06 00 4C */	lwz r0, 0x4c(r6)
/* 80CFDC7C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80CFDC80  80 66 00 50 */	lwz r3, 0x50(r6)
/* 80CFDC84  80 06 00 54 */	lwz r0, 0x54(r6)
/* 80CFDC88  90 64 00 18 */	stw r3, 0x18(r4)
/* 80CFDC8C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80CFDC90  80 06 00 58 */	lwz r0, 0x58(r6)
/* 80CFDC94  90 04 00 20 */	stw r0, 0x20(r4)
/* 80CFDC98  38 00 00 01 */	li r0, 1
/* 80CFDC9C  98 05 00 00 */	stb r0, 0(r5)
lbl_80CFDCA0:
/* 80CFDCA0  80 7F 09 2C */	lwz r3, 0x92c(r31)
/* 80CFDCA4  38 03 00 01 */	addi r0, r3, 1
/* 80CFDCA8  90 1F 09 2C */	stw r0, 0x92c(r31)
/* 80CFDCAC  7F E3 FB 78 */	mr r3, r31
/* 80CFDCB0  88 1F 09 34 */	lbz r0, 0x934(r31)
/* 80CFDCB4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CFDCB8  39 86 00 5C */	addi r12, r6, 0x5c
/* 80CFDCBC  7D 8C 02 14 */	add r12, r12, r0
/* 80CFDCC0  4B 66 43 C4 */	b __ptmf_scall
/* 80CFDCC4  60 00 00 00 */	nop 
/* 80CFDCC8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CFDCCC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80CFDCD0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CFDCD4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CFDCD8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CFDCDC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80CFDCE0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CFDCE4  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80CFDCE8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CFDCEC  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CFDCF0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CFDCF4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80CFDCF8  7F E3 FB 78 */	mr r3, r31
/* 80CFDCFC  4B FF F8 99 */	bl setBaseMtx__12daObjSword_cFv
/* 80CFDD00  38 60 00 01 */	li r3, 1
/* 80CFDD04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFDD08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFDD0C  7C 08 03 A6 */	mtlr r0
/* 80CFDD10  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFDD14  4E 80 00 20 */	blr 
