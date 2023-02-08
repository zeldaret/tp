lbl_809C681C:
/* 809C681C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C6820  7C 08 02 A6 */	mflr r0
/* 809C6824  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C6828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C682C  7C 7F 1B 78 */	mr r31, r3
/* 809C6830  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C6834  2C 00 00 02 */	cmpwi r0, 2
/* 809C6838  41 82 00 74 */	beq lbl_809C68AC
/* 809C683C  40 80 01 64 */	bge lbl_809C69A0
/* 809C6840  2C 00 00 00 */	cmpwi r0, 0
/* 809C6844  41 82 00 0C */	beq lbl_809C6850
/* 809C6848  48 00 01 58 */	b lbl_809C69A0
/* 809C684C  48 00 01 54 */	b lbl_809C69A0
lbl_809C6850:
/* 809C6850  38 80 00 17 */	li r4, 0x17
/* 809C6854  3C A0 80 9D */	lis r5, lit_6106@ha /* 0x809CA408@ha */
/* 809C6858  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)  /* 0x809CA408@l */
/* 809C685C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C6860  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C6864  7D 89 03 A6 */	mtctr r12
/* 809C6868  4E 80 04 21 */	bctrl 
/* 809C686C  7F E3 FB 78 */	mr r3, r31
/* 809C6870  38 80 00 00 */	li r4, 0
/* 809C6874  3C A0 80 9D */	lis r5, lit_6106@ha /* 0x809CA408@ha */
/* 809C6878  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)  /* 0x809CA408@l */
/* 809C687C  38 A0 00 00 */	li r5, 0
/* 809C6880  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C6884  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C6888  7D 89 03 A6 */	mtctr r12
/* 809C688C  4E 80 04 21 */	bctrl 
/* 809C6890  7F E3 FB 78 */	mr r3, r31
/* 809C6894  38 80 00 00 */	li r4, 0
/* 809C6898  4B FF C7 D9 */	bl setLookMode__11daNpc_grA_cFi
/* 809C689C  38 00 00 00 */	li r0, 0
/* 809C68A0  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C68A4  38 00 00 02 */	li r0, 2
/* 809C68A8  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C68AC:
/* 809C68AC  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809C68B0  2C 00 00 00 */	cmpwi r0, 0
/* 809C68B4  40 82 00 EC */	bne lbl_809C69A0
/* 809C68B8  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C68BC  4B 78 9E 31 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809C68C0  28 03 00 00 */	cmplwi r3, 0
/* 809C68C4  41 82 00 20 */	beq lbl_809C68E4
/* 809C68C8  7F E3 FB 78 */	mr r3, r31
/* 809C68CC  4B FF CB 59 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C68D0  2C 03 00 00 */	cmpwi r3, 0
/* 809C68D4  40 82 00 28 */	bne lbl_809C68FC
/* 809C68D8  38 00 00 00 */	li r0, 0
/* 809C68DC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C68E0  48 00 00 1C */	b lbl_809C68FC
lbl_809C68E4:
/* 809C68E4  7F E3 FB 78 */	mr r3, r31
/* 809C68E8  4B FF CB 3D */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C68EC  2C 03 00 00 */	cmpwi r3, 0
/* 809C68F0  41 82 00 0C */	beq lbl_809C68FC
/* 809C68F4  38 00 00 00 */	li r0, 0
/* 809C68F8  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809C68FC:
/* 809C68FC  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C6900  4B 78 9D ED */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809C6904  28 03 00 00 */	cmplwi r3, 0
/* 809C6908  41 82 00 14 */	beq lbl_809C691C
/* 809C690C  7F E3 FB 78 */	mr r3, r31
/* 809C6910  38 80 00 02 */	li r4, 2
/* 809C6914  4B FF C7 5D */	bl setLookMode__11daNpc_grA_cFi
/* 809C6918  48 00 00 88 */	b lbl_809C69A0
lbl_809C691C:
/* 809C691C  7F E3 FB 78 */	mr r3, r31
/* 809C6920  38 80 00 00 */	li r4, 0
/* 809C6924  4B FF C7 4D */	bl setLookMode__11daNpc_grA_cFi
/* 809C6928  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809C692C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C6930  7C 04 00 00 */	cmpw r4, r0
/* 809C6934  41 82 00 6C */	beq lbl_809C69A0
/* 809C6938  7F E3 FB 78 */	mr r3, r31
/* 809C693C  38 A0 00 17 */	li r5, 0x17
/* 809C6940  38 C0 00 16 */	li r6, 0x16
/* 809C6944  38 E0 00 0F */	li r7, 0xf
/* 809C6948  4B 78 D7 5D */	bl step__8daNpcF_cFsiii
/* 809C694C  2C 03 00 00 */	cmpwi r3, 0
/* 809C6950  41 82 00 50 */	beq lbl_809C69A0
/* 809C6954  7F E3 FB 78 */	mr r3, r31
/* 809C6958  38 80 00 17 */	li r4, 0x17
/* 809C695C  3C A0 80 9D */	lis r5, lit_6106@ha /* 0x809CA408@ha */
/* 809C6960  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)  /* 0x809CA408@l */
/* 809C6964  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C6968  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C696C  7D 89 03 A6 */	mtctr r12
/* 809C6970  4E 80 04 21 */	bctrl 
/* 809C6974  7F E3 FB 78 */	mr r3, r31
/* 809C6978  38 80 00 00 */	li r4, 0
/* 809C697C  3C A0 80 9D */	lis r5, lit_6106@ha /* 0x809CA408@ha */
/* 809C6980  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)  /* 0x809CA408@l */
/* 809C6984  38 A0 00 00 */	li r5, 0
/* 809C6988  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C698C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C6990  7D 89 03 A6 */	mtctr r12
/* 809C6994  4E 80 04 21 */	bctrl 
/* 809C6998  38 00 00 00 */	li r0, 0
/* 809C699C  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C69A0:
/* 809C69A0  38 60 00 01 */	li r3, 1
/* 809C69A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C69A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C69AC  7C 08 03 A6 */	mtlr r0
/* 809C69B0  38 21 00 10 */	addi r1, r1, 0x10
/* 809C69B4  4E 80 00 20 */	blr 
