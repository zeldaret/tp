lbl_80139908:
/* 80139908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013990C  7C 08 02 A6 */	mflr r0
/* 80139910  90 01 00 14 */	stw r0, 0x14(r1)
/* 80139914  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80139918  7C 7F 1B 78 */	mr r31, r3
/* 8013991C  4B FF 01 65 */	bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 80139920  2C 03 00 00 */	cmpwi r3, 0
/* 80139924  41 82 00 0C */	beq lbl_80139930
/* 80139928  38 60 00 01 */	li r3, 1
/* 8013992C  48 00 00 84 */	b lbl_801399B0
lbl_80139930:
/* 80139930  7F E3 FB 78 */	mr r3, r31
/* 80139934  38 80 00 08 */	li r4, 8
/* 80139938  4B F7 8C B1 */	bl itemButtonCheck__9daAlink_cFUc
/* 8013993C  2C 03 00 00 */	cmpwi r3, 0
/* 80139940  40 82 00 10 */	bne lbl_80139950
/* 80139944  7F E3 FB 78 */	mr r3, r31
/* 80139948  4B FF FA 5D */	bl checkWolfAttackAction__9daAlink_cFv
/* 8013994C  48 00 00 60 */	b lbl_801399AC
lbl_80139950:
/* 80139950  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 80139954  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80139958  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 8013995C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80139960  40 80 00 10 */	bge lbl_80139970
/* 80139964  7F E3 FB 78 */	mr r3, r31
/* 80139968  48 00 00 5D */	bl procWolfRollAttackMoveInit__9daAlink_cFv
/* 8013996C  48 00 00 40 */	b lbl_801399AC
lbl_80139970:
/* 80139970  38 7F 33 98 */	addi r3, r31, 0x3398
/* 80139974  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80139978  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wlMoveNoP_c0@ha /* 0x8038EF28@ha */
/* 8013997C  38 84 EF 28 */	addi r4, r4, m__23daAlinkHIO_wlMoveNoP_c0@l /* 0x8038EF28@l */
/* 80139980  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 80139984  48 13 6D BD */	bl cLib_chaseF__FPfff
/* 80139988  7F E3 FB 78 */	mr r3, r31
/* 8013998C  38 80 00 00 */	li r4, 0
/* 80139990  4B F7 9D A5 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 80139994  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80139998  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013999C  7F E3 FB 78 */	mr r3, r31
/* 801399A0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010037@ha */
/* 801399A4  38 84 00 37 */	addi r4, r4, 0x0037 /* 0x00010037@l */
/* 801399A8  4B F8 57 11 */	bl voiceStartLevel__9daAlink_cFUl
lbl_801399AC:
/* 801399AC  38 60 00 01 */	li r3, 1
lbl_801399B0:
/* 801399B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801399B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801399B8  7C 08 03 A6 */	mtlr r0
/* 801399BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801399C0  4E 80 00 20 */	blr 
