lbl_8070A3CC:
/* 8070A3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8070A3D0  7C 08 02 A6 */	mflr r0
/* 8070A3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070A3D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8070A3DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8070A3E0  41 82 00 1C */	beq lbl_8070A3FC
/* 8070A3E4  3C A0 80 71 */	lis r5, __vt__8cM3dGCyl@ha /* 0x8070A5C8@ha */
/* 8070A3E8  38 05 A5 C8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x8070A5C8@l */
/* 8070A3EC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8070A3F0  7C 80 07 35 */	extsh. r0, r4
/* 8070A3F4  40 81 00 08 */	ble lbl_8070A3FC
/* 8070A3F8  4B BC 49 45 */	bl __dl__FPv
lbl_8070A3FC:
/* 8070A3FC  7F E3 FB 78 */	mr r3, r31
/* 8070A400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8070A404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8070A408  7C 08 03 A6 */	mtlr r0
/* 8070A40C  38 21 00 10 */	addi r1, r1, 0x10
/* 8070A410  4E 80 00 20 */	blr 
