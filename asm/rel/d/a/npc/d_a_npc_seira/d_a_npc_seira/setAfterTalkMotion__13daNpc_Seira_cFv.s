lbl_80ACC8C0:
/* 80ACC8C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACC8C4  7C 08 02 A6 */	mflr r0
/* 80ACC8C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACC8CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACC8D0  4B 89 59 0D */	bl _savegpr_29
/* 80ACC8D4  7C 7D 1B 78 */	mr r29, r3
/* 80ACC8D8  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80ACC8DC  2C 00 00 07 */	cmpwi r0, 7
/* 80ACC8E0  41 82 00 38 */	beq lbl_80ACC918
/* 80ACC8E4  40 80 00 1C */	bge lbl_80ACC900
/* 80ACC8E8  2C 00 00 04 */	cmpwi r0, 4
/* 80ACC8EC  41 82 00 24 */	beq lbl_80ACC910
/* 80ACC8F0  40 80 00 44 */	bge lbl_80ACC934
/* 80ACC8F4  2C 00 00 03 */	cmpwi r0, 3
/* 80ACC8F8  40 80 00 70 */	bge lbl_80ACC968
/* 80ACC8FC  48 00 00 38 */	b lbl_80ACC934
lbl_80ACC900:
/* 80ACC900  2C 00 00 09 */	cmpwi r0, 9
/* 80ACC904  41 82 00 24 */	beq lbl_80ACC928
/* 80ACC908  40 80 00 2C */	bge lbl_80ACC934
/* 80ACC90C  48 00 00 14 */	b lbl_80ACC920
lbl_80ACC910:
/* 80ACC910  3B C0 00 06 */	li r30, 6
/* 80ACC914  48 00 00 24 */	b lbl_80ACC938
lbl_80ACC918:
/* 80ACC918  3B C0 00 0A */	li r30, 0xa
/* 80ACC91C  48 00 00 1C */	b lbl_80ACC938
lbl_80ACC920:
/* 80ACC920  3B C0 00 0B */	li r30, 0xb
/* 80ACC924  48 00 00 14 */	b lbl_80ACC938
lbl_80ACC928:
/* 80ACC928  3B C0 00 0C */	li r30, 0xc
/* 80ACC92C  48 00 00 0C */	b lbl_80ACC938
/* 80ACC930  48 00 00 38 */	b lbl_80ACC968
lbl_80ACC934:
/* 80ACC934  3B C0 00 0D */	li r30, 0xd
lbl_80ACC938:
/* 80ACC938  2C 1E 00 00 */	cmpwi r30, 0
/* 80ACC93C  41 80 00 2C */	blt lbl_80ACC968
/* 80ACC940  7C 1E 00 00 */	cmpw r30, r0
/* 80ACC944  41 82 00 24 */	beq lbl_80ACC968
/* 80ACC948  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80ACC94C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80ACC950  4B 67 8F 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACC954  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80ACC958  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80ACC95C  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACC960  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACC964  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80ACC968:
/* 80ACC968  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACC96C  4B 89 58 BD */	bl _restgpr_29
/* 80ACC970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACC974  7C 08 03 A6 */	mtlr r0
/* 80ACC978  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACC97C  4E 80 00 20 */	blr 
