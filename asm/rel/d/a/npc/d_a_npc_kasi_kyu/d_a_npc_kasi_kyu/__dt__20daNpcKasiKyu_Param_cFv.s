lbl_80A2584C:
/* 80A2584C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A25850  7C 08 02 A6 */	mflr r0
/* 80A25854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A25858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2585C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A25860  41 82 00 1C */	beq lbl_80A2587C
/* 80A25864  3C A0 80 A2 */	lis r5, __vt__20daNpcKasiKyu_Param_c@ha /* 0x80A25FF8@ha */
/* 80A25868  38 05 5F F8 */	addi r0, r5, __vt__20daNpcKasiKyu_Param_c@l /* 0x80A25FF8@l */
/* 80A2586C  90 1F 00 00 */	stw r0, 0(r31)
/* 80A25870  7C 80 07 35 */	extsh. r0, r4
/* 80A25874  40 81 00 08 */	ble lbl_80A2587C
/* 80A25878  4B 8A 94 C5 */	bl __dl__FPv
lbl_80A2587C:
/* 80A2587C  7F E3 FB 78 */	mr r3, r31
/* 80A25880  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A25884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A25888  7C 08 03 A6 */	mtlr r0
/* 80A2588C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A25890  4E 80 00 20 */	blr 
