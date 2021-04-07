lbl_80A450D4:
/* 80A450D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A450D8  7C 08 02 A6 */	mflr r0
/* 80A450DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A450E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A450E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A450E8  41 82 00 1C */	beq lbl_80A45104
/* 80A450EC  3C A0 80 A4 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A457A0@ha */
/* 80A450F0  38 05 57 A0 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80A457A0@l */
/* 80A450F4  90 1F 00 04 */	stw r0, 4(r31)
/* 80A450F8  7C 80 07 35 */	extsh. r0, r4
/* 80A450FC  40 81 00 08 */	ble lbl_80A45104
/* 80A45100  4B 88 9C 3D */	bl __dl__FPv
lbl_80A45104:
/* 80A45104  7F E3 FB 78 */	mr r3, r31
/* 80A45108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A4510C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A45110  7C 08 03 A6 */	mtlr r0
/* 80A45114  38 21 00 10 */	addi r1, r1, 0x10
/* 80A45118  4E 80 00 20 */	blr 
