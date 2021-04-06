lbl_80B5080C:
/* 80B5080C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B50810  7C 08 02 A6 */	mflr r0
/* 80B50814  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B50818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5081C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B50820  7C 7F 1B 78 */	mr r31, r3
/* 80B50824  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B50828  2C 00 00 02 */	cmpwi r0, 2
/* 80B5082C  41 82 00 20 */	beq lbl_80B5084C
/* 80B50830  40 80 01 C0 */	bge lbl_80B509F0
/* 80B50834  2C 00 00 00 */	cmpwi r0, 0
/* 80B50838  40 80 00 0C */	bge lbl_80B50844
/* 80B5083C  48 00 01 B4 */	b lbl_80B509F0
/* 80B50840  48 00 01 B0 */	b lbl_80B509F0
lbl_80B50844:
/* 80B50844  38 00 00 02 */	li r0, 2
/* 80B50848  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B5084C:
/* 80B5084C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B50850  2C 00 00 00 */	cmpwi r0, 0
/* 80B50854  40 82 01 9C */	bne lbl_80B509F0
/* 80B50858  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B5085C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80B50860  41 82 00 14 */	beq lbl_80B50874
/* 80B50864  40 80 00 E8 */	bge lbl_80B5094C
/* 80B50868  2C 00 00 05 */	cmpwi r0, 5
/* 80B5086C  41 82 00 7C */	beq lbl_80B508E8
/* 80B50870  48 00 00 DC */	b lbl_80B5094C
lbl_80B50874:
/* 80B50874  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B50878  4B 5F 51 AD */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B5087C  2C 03 00 00 */	cmpwi r3, 0
/* 80B50880  41 82 01 34 */	beq lbl_80B509B4
/* 80B50884  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B50888  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B5088C  41 82 00 28 */	beq lbl_80B508B4
/* 80B50890  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B50894  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B50898  4B 5F 50 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5089C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B508A0  38 00 00 1A */	li r0, 0x1a
/* 80B508A4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B508A8  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B508AC  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B508B0  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B508B4:
/* 80B508B4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B508B8  2C 00 00 16 */	cmpwi r0, 0x16
/* 80B508BC  41 82 00 F8 */	beq lbl_80B509B4
/* 80B508C0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B508C4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B508C8  4B 5F 4F D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B508CC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B508D0  38 00 00 16 */	li r0, 0x16
/* 80B508D4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B508D8  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B508DC  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B508E0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B508E4  48 00 00 D0 */	b lbl_80B509B4
lbl_80B508E8:
/* 80B508E8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B508EC  2C 00 00 0E */	cmpwi r0, 0xe
/* 80B508F0  41 82 00 28 */	beq lbl_80B50918
/* 80B508F4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B508F8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B508FC  4B 5F 4F 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50900  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B50904  38 00 00 0E */	li r0, 0xe
/* 80B50908  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B5090C  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B50910  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B50914  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B50918:
/* 80B50918  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B5091C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80B50920  41 82 00 94 */	beq lbl_80B509B4
/* 80B50924  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B50928  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B5092C  4B 5F 4F 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50930  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B50934  38 00 00 1B */	li r0, 0x1b
/* 80B50938  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B5093C  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B50940  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B50944  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B50948  48 00 00 6C */	b lbl_80B509B4
lbl_80B5094C:
/* 80B5094C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80B50950  41 82 00 64 */	beq lbl_80B509B4
/* 80B50954  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B50958  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B5095C  41 82 00 28 */	beq lbl_80B50984
/* 80B50960  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B50964  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B50968  4B 5F 4F 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5096C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B50970  38 00 00 1A */	li r0, 0x1a
/* 80B50974  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B50978  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B5097C  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B50980  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B50984:
/* 80B50984  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B50988  2C 00 00 16 */	cmpwi r0, 0x16
/* 80B5098C  41 82 00 28 */	beq lbl_80B509B4
/* 80B50990  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B50994  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B50998  4B 5F 4F 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5099C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B509A0  38 00 00 16 */	li r0, 0x16
/* 80B509A4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B509A8  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B509AC  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B509B0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B509B4:
/* 80B509B4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B509B8  2C 00 00 00 */	cmpwi r0, 0
/* 80B509BC  41 82 00 28 */	beq lbl_80B509E4
/* 80B509C0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B509C4  4B 5F 4D 39 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B509C8  38 00 00 00 */	li r0, 0
/* 80B509CC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B509D0  3C 60 80 B5 */	lis r3, lit_4330@ha /* 0x80B5237C@ha */
/* 80B509D4  C0 03 23 7C */	lfs f0, lit_4330@l(r3)  /* 0x80B5237C@l */
/* 80B509D8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B509DC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B509E0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B509E4:
/* 80B509E4  38 00 00 00 */	li r0, 0
/* 80B509E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B509EC  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80B509F0:
/* 80B509F0  38 60 00 01 */	li r3, 1
/* 80B509F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B509F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B509FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B50A00  7C 08 03 A6 */	mtlr r0
/* 80B50A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80B50A08  4E 80 00 20 */	blr 
