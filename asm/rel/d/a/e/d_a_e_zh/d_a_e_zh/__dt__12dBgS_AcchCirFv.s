lbl_8082F084:
/* 8082F084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082F088  7C 08 02 A6 */	mflr r0
/* 8082F08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082F090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082F094  93 C1 00 08 */	stw r30, 8(r1)
/* 8082F098  7C 7E 1B 79 */	or. r30, r3, r3
/* 8082F09C  7C 9F 23 78 */	mr r31, r4
/* 8082F0A0  41 82 00 38 */	beq lbl_8082F0D8
/* 8082F0A4  3C 60 80 83 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8082F65C@ha */
/* 8082F0A8  38 03 F6 5C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8082F65C@l */
/* 8082F0AC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8082F0B0  38 7E 00 14 */	addi r3, r30, 0x14
/* 8082F0B4  38 80 FF FF */	li r4, -1
/* 8082F0B8  4B A3 FE 61 */	bl __dt__8cM3dGCirFv
/* 8082F0BC  7F C3 F3 78 */	mr r3, r30
/* 8082F0C0  38 80 00 00 */	li r4, 0
/* 8082F0C4  4B A3 8F ED */	bl __dt__13cBgS_PolyInfoFv
/* 8082F0C8  7F E0 07 35 */	extsh. r0, r31
/* 8082F0CC  40 81 00 0C */	ble lbl_8082F0D8
/* 8082F0D0  7F C3 F3 78 */	mr r3, r30
/* 8082F0D4  4B A9 FC 69 */	bl __dl__FPv
lbl_8082F0D8:
/* 8082F0D8  7F C3 F3 78 */	mr r3, r30
/* 8082F0DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082F0E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8082F0E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082F0E8  7C 08 03 A6 */	mtlr r0
/* 8082F0EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8082F0F0  4E 80 00 20 */	blr 
