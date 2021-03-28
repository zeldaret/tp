lbl_80A9621C:
/* 80A9621C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A96220  7C 08 02 A6 */	mflr r0
/* 80A96224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A96228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9622C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A96230  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A96234  7C 9F 23 78 */	mr r31, r4
/* 80A96238  41 82 00 38 */	beq lbl_80A96270
/* 80A9623C  3C 60 80 A9 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A96240  38 03 79 8C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A96244  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A96248  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A9624C  38 80 FF FF */	li r4, -1
/* 80A96250  4B 7D 8C C8 */	b __dt__8cM3dGCirFv
/* 80A96254  7F C3 F3 78 */	mr r3, r30
/* 80A96258  38 80 00 00 */	li r4, 0
/* 80A9625C  4B 7D 1E 54 */	b __dt__13cBgS_PolyInfoFv
/* 80A96260  7F E0 07 35 */	extsh. r0, r31
/* 80A96264  40 81 00 0C */	ble lbl_80A96270
/* 80A96268  7F C3 F3 78 */	mr r3, r30
/* 80A9626C  4B 83 8A D0 */	b __dl__FPv
lbl_80A96270:
/* 80A96270  7F C3 F3 78 */	mr r3, r30
/* 80A96274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A96278  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9627C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A96280  7C 08 03 A6 */	mtlr r0
/* 80A96284  38 21 00 10 */	addi r1, r1, 0x10
/* 80A96288  4E 80 00 20 */	blr 
