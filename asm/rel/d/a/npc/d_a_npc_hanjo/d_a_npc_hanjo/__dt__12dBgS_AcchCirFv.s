lbl_809FF904:
/* 809FF904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FF908  7C 08 02 A6 */	mflr r0
/* 809FF90C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FF910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FF914  93 C1 00 08 */	stw r30, 8(r1)
/* 809FF918  7C 7E 1B 79 */	or. r30, r3, r3
/* 809FF91C  7C 9F 23 78 */	mr r31, r4
/* 809FF920  41 82 00 38 */	beq lbl_809FF958
/* 809FF924  3C 60 80 A0 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A01140@ha */
/* 809FF928  38 03 11 40 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A01140@l */
/* 809FF92C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809FF930  38 7E 00 14 */	addi r3, r30, 0x14
/* 809FF934  38 80 FF FF */	li r4, -1
/* 809FF938  4B 86 F5 E1 */	bl __dt__8cM3dGCirFv
/* 809FF93C  7F C3 F3 78 */	mr r3, r30
/* 809FF940  38 80 00 00 */	li r4, 0
/* 809FF944  4B 86 87 6D */	bl __dt__13cBgS_PolyInfoFv
/* 809FF948  7F E0 07 35 */	extsh. r0, r31
/* 809FF94C  40 81 00 0C */	ble lbl_809FF958
/* 809FF950  7F C3 F3 78 */	mr r3, r30
/* 809FF954  4B 8C F3 E9 */	bl __dl__FPv
lbl_809FF958:
/* 809FF958  7F C3 F3 78 */	mr r3, r30
/* 809FF95C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FF960  83 C1 00 08 */	lwz r30, 8(r1)
/* 809FF964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FF968  7C 08 03 A6 */	mtlr r0
/* 809FF96C  38 21 00 10 */	addi r1, r1, 0x10
/* 809FF970  4E 80 00 20 */	blr 
