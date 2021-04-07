lbl_80AEADDC:
/* 80AEADDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEADE0  7C 08 02 A6 */	mflr r0
/* 80AEADE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEADE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEADEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEADF0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEADF4  7C 9F 23 78 */	mr r31, r4
/* 80AEADF8  41 82 00 40 */	beq lbl_80AEAE38
/* 80AEADFC  3C 80 80 AF */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x80AEBD24@ha */
/* 80AEAE00  38 84 BD 24 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x80AEBD24@l */
/* 80AEAE04  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AEAE08  38 04 00 0C */	addi r0, r4, 0xc
/* 80AEAE0C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80AEAE10  38 04 00 18 */	addi r0, r4, 0x18
/* 80AEAE14  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80AEAE18  38 04 00 24 */	addi r0, r4, 0x24
/* 80AEAE1C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80AEAE20  38 80 00 00 */	li r4, 0
/* 80AEAE24  4B 58 C7 CD */	bl __dt__11dBgS_GndChkFv
/* 80AEAE28  7F E0 07 35 */	extsh. r0, r31
/* 80AEAE2C  40 81 00 0C */	ble lbl_80AEAE38
/* 80AEAE30  7F C3 F3 78 */	mr r3, r30
/* 80AEAE34  4B 7E 3F 09 */	bl __dl__FPv
lbl_80AEAE38:
/* 80AEAE38  7F C3 F3 78 */	mr r3, r30
/* 80AEAE3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEAE40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEAE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEAE48  7C 08 03 A6 */	mtlr r0
/* 80AEAE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEAE50  4E 80 00 20 */	blr 
