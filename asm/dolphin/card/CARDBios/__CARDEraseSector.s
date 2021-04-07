lbl_803539B8:
/* 803539B8  7C 08 02 A6 */	mflr r0
/* 803539BC  90 01 00 04 */	stw r0, 4(r1)
/* 803539C0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 803539C4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 803539C8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 803539CC  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 803539D0  3B A3 00 00 */	addi r29, r3, 0
/* 803539D4  1C DD 01 10 */	mulli r6, r29, 0x110
/* 803539D8  3C 60 80 45 */	lis r3, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 803539DC  38 03 CB C0 */	addi r0, r3, __CARDBlock@l /* 0x8044CBC0@l */
/* 803539E0  7F E0 32 14 */	add r31, r0, r6
/* 803539E4  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 803539E8  28 00 00 80 */	cmplwi r0, 0x80
/* 803539EC  40 81 00 28 */	ble lbl_80353A14
/* 803539F0  28 05 00 00 */	cmplwi r5, 0
/* 803539F4  41 82 00 18 */	beq lbl_80353A0C
/* 803539F8  39 85 00 00 */	addi r12, r5, 0
/* 803539FC  7D 88 03 A6 */	mtlr r12
/* 80353A00  38 7D 00 00 */	addi r3, r29, 0
/* 80353A04  38 80 00 00 */	li r4, 0
/* 80353A08  4E 80 00 21 */	blrl 
lbl_80353A0C:
/* 80353A0C  38 60 00 00 */	li r3, 0
/* 80353A10  48 00 00 9C */	b lbl_80353AAC
lbl_80353A14:
/* 80353A14  38 00 00 F1 */	li r0, 0xf1
/* 80353A18  98 1F 00 94 */	stb r0, 0x94(r31)
/* 80353A1C  54 80 7E 7E */	rlwinm r0, r4, 0xf, 0x19, 0x1f
/* 80353A20  54 83 BE 3E */	rlwinm r3, r4, 0x17, 0x18, 0x1f
/* 80353A24  98 1F 00 95 */	stb r0, 0x95(r31)
/* 80353A28  38 C0 00 03 */	li r6, 3
/* 80353A2C  38 00 FF FF */	li r0, -1
/* 80353A30  98 7F 00 96 */	stb r3, 0x96(r31)
/* 80353A34  7F A3 EB 78 */	mr r3, r29
/* 80353A38  38 80 00 00 */	li r4, 0
/* 80353A3C  90 DF 00 A0 */	stw r6, 0xa0(r31)
/* 80353A40  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 80353A44  90 DF 00 A8 */	stw r6, 0xa8(r31)
/* 80353A48  4B FF FA DD */	bl __CARDStart
/* 80353A4C  3B C3 00 00 */	addi r30, r3, 0
/* 80353A50  2C 1E FF FF */	cmpwi r30, -1
/* 80353A54  40 82 00 0C */	bne lbl_80353A60
/* 80353A58  3B C0 00 00 */	li r30, 0
/* 80353A5C  48 00 00 4C */	b lbl_80353AA8
lbl_80353A60:
/* 80353A60  2C 1E 00 00 */	cmpwi r30, 0
/* 80353A64  41 80 00 44 */	blt lbl_80353AA8
/* 80353A68  80 BF 00 A0 */	lwz r5, 0xa0(r31)
/* 80353A6C  38 7D 00 00 */	addi r3, r29, 0
/* 80353A70  38 9F 00 94 */	addi r4, r31, 0x94
/* 80353A74  38 C0 00 01 */	li r6, 1
/* 80353A78  4B FE F4 E5 */	bl EXIImmEx
/* 80353A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80353A80  40 82 00 14 */	bne lbl_80353A94
/* 80353A84  38 00 00 00 */	li r0, 0
/* 80353A88  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 80353A8C  3B C0 FF FD */	li r30, -3
/* 80353A90  48 00 00 08 */	b lbl_80353A98
lbl_80353A94:
/* 80353A94  3B C0 00 00 */	li r30, 0
lbl_80353A98:
/* 80353A98  7F A3 EB 78 */	mr r3, r29
/* 80353A9C  4B FE FE F9 */	bl EXIDeselect
/* 80353AA0  7F A3 EB 78 */	mr r3, r29
/* 80353AA4  4B FF 06 79 */	bl EXIUnlock
lbl_80353AA8:
/* 80353AA8  7F C3 F3 78 */	mr r3, r30
lbl_80353AAC:
/* 80353AAC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80353AB0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80353AB4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80353AB8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80353ABC  38 21 00 28 */	addi r1, r1, 0x28
/* 80353AC0  7C 08 03 A6 */	mtlr r0
/* 80353AC4  4E 80 00 20 */	blr 
