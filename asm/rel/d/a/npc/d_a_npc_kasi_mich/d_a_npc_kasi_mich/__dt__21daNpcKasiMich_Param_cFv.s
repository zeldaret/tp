lbl_80A29FE0:
/* 80A29FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29FE4  7C 08 02 A6 */	mflr r0
/* 80A29FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A29FF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A29FF4  41 82 00 1C */	beq lbl_80A2A010
/* 80A29FF8  3C A0 80 A3 */	lis r5, __vt__21daNpcKasiMich_Param_c@ha /* 0x80A2A788@ha */
/* 80A29FFC  38 05 A7 88 */	addi r0, r5, __vt__21daNpcKasiMich_Param_c@l /* 0x80A2A788@l */
/* 80A2A000  90 1F 00 00 */	stw r0, 0(r31)
/* 80A2A004  7C 80 07 35 */	extsh. r0, r4
/* 80A2A008  40 81 00 08 */	ble lbl_80A2A010
/* 80A2A00C  4B 8A 4D 31 */	bl __dl__FPv
lbl_80A2A010:
/* 80A2A010  7F E3 FB 78 */	mr r3, r31
/* 80A2A014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2A018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2A01C  7C 08 03 A6 */	mtlr r0
/* 80A2A020  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2A024  4E 80 00 20 */	blr 
