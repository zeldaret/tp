lbl_8084AAAC:
/* 8084AAAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8084AAB0  7C 08 02 A6 */	mflr r0
/* 8084AAB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8084AAB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8084AABC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8084AAC0  7C 7E 1B 78 */	mr r30, r3
/* 8084AAC4  48 00 A0 1D */	bl getMidnaActor__9daPy_py_cFv
/* 8084AAC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8084AACC  41 82 00 5C */	beq lbl_8084AB28
/* 8084AAD0  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8084AAD4  80 63 00 04 */	lwz r3, 4(r3)
/* 8084AAD8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8084AADC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8084AAE0  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8084AAE4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8084AAE8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8084AAEC  4B AF B9 C4 */	b PSMTXCopy
/* 8084AAF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084AAF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084AAF8  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8084AAFC  D0 41 00 08 */	stfs f2, 8(r1)
/* 8084AB00  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8084AB04  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8084AB08  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8084AB0C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8084AB10  D0 5F 09 AC */	stfs f2, 0x9ac(r31)
/* 8084AB14  D0 3F 09 B0 */	stfs f1, 0x9b0(r31)
/* 8084AB18  D0 1F 09 B4 */	stfs f0, 0x9b4(r31)
/* 8084AB1C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 8084AB20  60 00 04 00 */	ori r0, r0, 0x400
/* 8084AB24  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_8084AB28:
/* 8084AB28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8084AB2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8084AB30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8084AB34  7C 08 03 A6 */	mtlr r0
/* 8084AB38  38 21 00 20 */	addi r1, r1, 0x20
/* 8084AB3C  4E 80 00 20 */	blr 
