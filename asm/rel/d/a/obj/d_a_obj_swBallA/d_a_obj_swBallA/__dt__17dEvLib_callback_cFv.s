lbl_80CF42F4:
/* 80CF42F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF42F8  7C 08 02 A6 */	mflr r0
/* 80CF42FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF4300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF4304  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF4308  41 82 00 1C */	beq lbl_80CF4324
/* 80CF430C  3C A0 80 CF */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80CF4310  38 05 44 E0 */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80CF4314  90 1F 00 00 */	stw r0, 0(r31)
/* 80CF4318  7C 80 07 35 */	extsh. r0, r4
/* 80CF431C  40 81 00 08 */	ble lbl_80CF4324
/* 80CF4320  4B 5D AA 1C */	b __dl__FPv
lbl_80CF4324:
/* 80CF4324  7F E3 FB 78 */	mr r3, r31
/* 80CF4328  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF432C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF4330  7C 08 03 A6 */	mtlr r0
/* 80CF4334  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF4338  4E 80 00 20 */	blr 
