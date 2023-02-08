lbl_801CF2A0:
/* 801CF2A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CF2A4  7C 08 02 A6 */	mflr r0
/* 801CF2A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CF2AC  39 61 00 20 */	addi r11, r1, 0x20
/* 801CF2B0  48 19 2F 25 */	bl _savegpr_27
/* 801CF2B4  7C 7B 1B 78 */	mr r27, r3
/* 801CF2B8  7C 9E 23 78 */	mr r30, r4
/* 801CF2BC  3C 80 80 39 */	lis r4, palNo@ha /* 0x803961B0@ha */
/* 801CF2C0  3B A4 61 B0 */	addi r29, r4, palNo@l /* 0x803961B0@l */
/* 801CF2C4  3B FD 00 20 */	addi r31, r29, 0x20
/* 801CF2C8  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 801CF2CC  28 00 00 00 */	cmplwi r0, 0
/* 801CF2D0  41 82 00 7C */	beq lbl_801CF34C
/* 801CF2D4  88 9B 00 E4 */	lbz r4, 0xe4(r27)
/* 801CF2D8  80 1B 00 A0 */	lwz r0, 0xa0(r27)
/* 801CF2DC  7C 04 00 00 */	cmpw r4, r0
/* 801CF2E0  40 82 00 6C */	bne lbl_801CF34C
/* 801CF2E4  80 9B 00 98 */	lwz r4, 0x98(r27)
/* 801CF2E8  80 1B 00 DC */	lwz r0, 0xdc(r27)
/* 801CF2EC  7C 04 00 00 */	cmpw r4, r0
/* 801CF2F0  40 82 00 5C */	bne lbl_801CF34C
/* 801CF2F4  80 1B 00 E8 */	lwz r0, 0xe8(r27)
/* 801CF2F8  28 00 00 00 */	cmplwi r0, 0
/* 801CF2FC  40 82 00 0C */	bne lbl_801CF308
/* 801CF300  3B FD 00 68 */	addi r31, r29, 0x68
/* 801CF304  48 00 00 70 */	b lbl_801CF374
lbl_801CF308:
/* 801CF308  80 9B 00 9C */	lwz r4, 0x9c(r27)
/* 801CF30C  4B FF F7 D5 */	bl isFlashRoomNoCheck__15dMenu_FmapMap_cCFi
/* 801CF310  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CF314  41 82 00 0C */	beq lbl_801CF320
/* 801CF318  3B FD 00 68 */	addi r31, r29, 0x68
/* 801CF31C  48 00 00 58 */	b lbl_801CF374
lbl_801CF320:
/* 801CF320  83 9B 00 A0 */	lwz r28, 0xa0(r27)
/* 801CF324  4B E5 FB 3D */	bl dComIfGp_getNowLevel__Fv
/* 801CF328  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801CF32C  7C 1C 00 00 */	cmpw r28, r0
/* 801CF330  40 82 00 44 */	bne lbl_801CF374
/* 801CF334  80 7B 00 98 */	lwz r3, 0x98(r27)
/* 801CF338  80 1B 00 90 */	lwz r0, 0x90(r27)
/* 801CF33C  7C 03 00 00 */	cmpw r3, r0
/* 801CF340  40 82 00 34 */	bne lbl_801CF374
/* 801CF344  3B FD 00 44 */	addi r31, r29, 0x44
/* 801CF348  48 00 00 2C */	b lbl_801CF374
lbl_801CF34C:
/* 801CF34C  83 9B 00 A0 */	lwz r28, 0xa0(r27)
/* 801CF350  4B E5 FB 11 */	bl dComIfGp_getNowLevel__Fv
/* 801CF354  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801CF358  7C 1C 00 00 */	cmpw r28, r0
/* 801CF35C  40 82 00 18 */	bne lbl_801CF374
/* 801CF360  80 7B 00 98 */	lwz r3, 0x98(r27)
/* 801CF364  80 1B 00 90 */	lwz r0, 0x90(r27)
/* 801CF368  7C 03 00 00 */	cmpw r3, r0
/* 801CF36C  40 82 00 08 */	bne lbl_801CF374
/* 801CF370  3B FD 00 44 */	addi r31, r29, 0x44
lbl_801CF374:
/* 801CF374  57 C0 10 3A */	slwi r0, r30, 2
/* 801CF378  7C 7F 02 14 */	add r3, r31, r0
/* 801CF37C  39 61 00 20 */	addi r11, r1, 0x20
/* 801CF380  48 19 2E A1 */	bl _restgpr_27
/* 801CF384  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CF388  7C 08 03 A6 */	mtlr r0
/* 801CF38C  38 21 00 20 */	addi r1, r1, 0x20
/* 801CF390  4E 80 00 20 */	blr 
