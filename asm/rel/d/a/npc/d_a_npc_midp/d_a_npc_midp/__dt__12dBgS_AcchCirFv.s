lbl_80A731EC:
/* 80A731EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A731F0  7C 08 02 A6 */	mflr r0
/* 80A731F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A731F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A731FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A73200  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A73204  7C 9F 23 78 */	mr r31, r4
/* 80A73208  41 82 00 38 */	beq lbl_80A73240
/* 80A7320C  3C 60 80 A7 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A73210  38 03 3C 18 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A73214  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A73218  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A7321C  38 80 FF FF */	li r4, -1
/* 80A73220  4B 7F BC F8 */	b __dt__8cM3dGCirFv
/* 80A73224  7F C3 F3 78 */	mr r3, r30
/* 80A73228  38 80 00 00 */	li r4, 0
/* 80A7322C  4B 7F 4E 84 */	b __dt__13cBgS_PolyInfoFv
/* 80A73230  7F E0 07 35 */	extsh. r0, r31
/* 80A73234  40 81 00 0C */	ble lbl_80A73240
/* 80A73238  7F C3 F3 78 */	mr r3, r30
/* 80A7323C  4B 85 BB 00 */	b __dl__FPv
lbl_80A73240:
/* 80A73240  7F C3 F3 78 */	mr r3, r30
/* 80A73244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A73248  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A7324C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A73250  7C 08 03 A6 */	mtlr r0
/* 80A73254  38 21 00 10 */	addi r1, r1, 0x10
/* 80A73258  4E 80 00 20 */	blr 
