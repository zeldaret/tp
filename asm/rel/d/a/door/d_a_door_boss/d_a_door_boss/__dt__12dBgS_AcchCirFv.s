lbl_8066F9D8:
/* 8066F9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066F9DC  7C 08 02 A6 */	mflr r0
/* 8066F9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066F9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066F9E8  93 C1 00 08 */	stw r30, 8(r1)
/* 8066F9EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8066F9F0  7C 9F 23 78 */	mr r31, r4
/* 8066F9F4  41 82 00 38 */	beq lbl_8066FA2C
/* 8066F9F8  3C 60 80 67 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80670B74@ha */
/* 8066F9FC  38 03 0B 74 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80670B74@l */
/* 8066FA00  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8066FA04  38 7E 00 14 */	addi r3, r30, 0x14
/* 8066FA08  38 80 FF FF */	li r4, -1
/* 8066FA0C  4B BF F5 0D */	bl __dt__8cM3dGCirFv
/* 8066FA10  7F C3 F3 78 */	mr r3, r30
/* 8066FA14  38 80 00 00 */	li r4, 0
/* 8066FA18  4B BF 86 99 */	bl __dt__13cBgS_PolyInfoFv
/* 8066FA1C  7F E0 07 35 */	extsh. r0, r31
/* 8066FA20  40 81 00 0C */	ble lbl_8066FA2C
/* 8066FA24  7F C3 F3 78 */	mr r3, r30
/* 8066FA28  4B C5 F3 15 */	bl __dl__FPv
lbl_8066FA2C:
/* 8066FA2C  7F C3 F3 78 */	mr r3, r30
/* 8066FA30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066FA34  83 C1 00 08 */	lwz r30, 8(r1)
/* 8066FA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066FA3C  7C 08 03 A6 */	mtlr r0
/* 8066FA40  38 21 00 10 */	addi r1, r1, 0x10
/* 8066FA44  4E 80 00 20 */	blr 
