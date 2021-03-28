lbl_80CCB900:
/* 80CCB900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCB904  7C 08 02 A6 */	mflr r0
/* 80CCB908  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCB90C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCB910  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCB914  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CCB918  7C 9F 23 78 */	mr r31, r4
/* 80CCB91C  41 82 00 38 */	beq lbl_80CCB954
/* 80CCB920  3C 80 80 CD */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80CCB924  38 84 CE F0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80CCB928  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CCB92C  38 04 00 0C */	addi r0, r4, 0xc
/* 80CCB930  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CCB934  38 04 00 18 */	addi r0, r4, 0x18
/* 80CCB938  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CCB93C  38 80 00 00 */	li r4, 0
/* 80CCB940  4B 3A A6 54 */	b __dt__9dBgS_AcchFv
/* 80CCB944  7F E0 07 35 */	extsh. r0, r31
/* 80CCB948  40 81 00 0C */	ble lbl_80CCB954
/* 80CCB94C  7F C3 F3 78 */	mr r3, r30
/* 80CCB950  4B 60 33 EC */	b __dl__FPv
lbl_80CCB954:
/* 80CCB954  7F C3 F3 78 */	mr r3, r30
/* 80CCB958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCB95C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCB960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCB964  7C 08 03 A6 */	mtlr r0
/* 80CCB968  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCB96C  4E 80 00 20 */	blr 
