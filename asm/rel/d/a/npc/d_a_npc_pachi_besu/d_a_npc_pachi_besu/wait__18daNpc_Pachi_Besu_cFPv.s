lbl_80A94778:
/* 80A94778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9477C  7C 08 02 A6 */	mflr r0
/* 80A94780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A94784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A94788  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9478C  7C 7F 1B 78 */	mr r31, r3
/* 80A94790  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A94794  2C 00 00 02 */	cmpwi r0, 2
/* 80A94798  41 82 00 94 */	beq lbl_80A9482C
/* 80A9479C  40 80 02 34 */	bge lbl_80A949D0
/* 80A947A0  2C 00 00 00 */	cmpwi r0, 0
/* 80A947A4  40 80 00 0C */	bge lbl_80A947B0
/* 80A947A8  48 00 02 28 */	b lbl_80A949D0
/* 80A947AC  48 00 02 24 */	b lbl_80A949D0
lbl_80A947B0:
/* 80A947B0  38 00 00 00 */	li r0, 0
/* 80A947B4  98 1F 0F 81 */	stb r0, 0xf81(r31)
/* 80A947B8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A947BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A947C0  40 82 00 6C */	bne lbl_80A9482C
/* 80A947C4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A947C8  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80A947CC  41 82 00 28 */	beq lbl_80A947F4
/* 80A947D0  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A947D4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A947D8  4B 6B 10 C1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A947DC  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A947E0  38 00 00 1C */	li r0, 0x1c
/* 80A947E4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A947E8  3C 60 80 A9 */	lis r3, lit_4732@ha /* 0x80A96B20@ha */
/* 80A947EC  C0 03 6B 20 */	lfs f0, lit_4732@l(r3)  /* 0x80A96B20@l */
/* 80A947F0  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A947F4:
/* 80A947F4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A947F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A947FC  41 82 00 28 */	beq lbl_80A94824
/* 80A94800  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A94804  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A94808  4B 6B 10 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A9480C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A94810  38 00 00 00 */	li r0, 0
/* 80A94814  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A94818  3C 60 80 A9 */	lis r3, lit_4732@ha /* 0x80A96B20@ha */
/* 80A9481C  C0 03 6B 20 */	lfs f0, lit_4732@l(r3)  /* 0x80A96B20@l */
/* 80A94820  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A94824:
/* 80A94824  38 00 00 02 */	li r0, 2
/* 80A94828  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A9482C:
/* 80A9482C  38 00 00 00 */	li r0, 0
/* 80A94830  98 1F 0F 81 */	stb r0, 0xf81(r31)
/* 80A94834  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A94838  2C 00 00 00 */	cmpwi r0, 0
/* 80A9483C  40 82 01 94 */	bne lbl_80A949D0
/* 80A94840  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A94844  4B 6B 0E C5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A94848  28 03 00 00 */	cmplwi r3, 0
/* 80A9484C  41 82 00 D4 */	beq lbl_80A94920
/* 80A94850  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A94854  28 00 00 00 */	cmplwi r0, 0
/* 80A94858  40 82 00 C8 */	bne lbl_80A94920
/* 80A9485C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A94860  2C 00 00 01 */	cmpwi r0, 1
/* 80A94864  41 82 00 2C */	beq lbl_80A94890
/* 80A94868  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A9486C  4B 6B 0E 91 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A94870  38 00 00 00 */	li r0, 0
/* 80A94874  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A94878  3C 60 80 A9 */	lis r3, lit_4347@ha /* 0x80A96B0C@ha */
/* 80A9487C  C0 03 6B 0C */	lfs f0, lit_4347@l(r3)  /* 0x80A96B0C@l */
/* 80A94880  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A94884  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A94888  38 00 00 01 */	li r0, 1
/* 80A9488C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A94890:
/* 80A94890  38 00 00 00 */	li r0, 0
/* 80A94894  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A94898  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A9489C  4B 6B 0E 6D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A948A0  7C 64 1B 78 */	mr r4, r3
/* 80A948A4  7F E3 FB 78 */	mr r3, r31
/* 80A948A8  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80A948AC  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80A948B0  4B 6B 63 21 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80A948B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A948B8  40 82 00 3C */	bne lbl_80A948F4
/* 80A948BC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A948C0  2C 00 00 00 */	cmpwi r0, 0
/* 80A948C4  41 82 00 28 */	beq lbl_80A948EC
/* 80A948C8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A948CC  4B 6B 0E 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A948D0  38 00 00 00 */	li r0, 0
/* 80A948D4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A948D8  3C 60 80 A9 */	lis r3, lit_4347@ha /* 0x80A96B0C@ha */
/* 80A948DC  C0 03 6B 0C */	lfs f0, lit_4347@l(r3)  /* 0x80A96B0C@l */
/* 80A948E0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A948E4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A948E8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A948EC:
/* 80A948EC  38 00 00 00 */	li r0, 0
/* 80A948F0  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A948F4:
/* 80A948F4  7F E3 FB 78 */	mr r3, r31
/* 80A948F8  4B 6B 6A 41 */	bl srchPlayerActor__8daNpcT_cFv
/* 80A948FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A94900  40 82 00 D0 */	bne lbl_80A949D0
/* 80A94904  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80A94908  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A9490C  7C 03 00 00 */	cmpw r3, r0
/* 80A94910  40 82 00 C0 */	bne lbl_80A949D0
/* 80A94914  38 00 00 01 */	li r0, 1
/* 80A94918  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80A9491C  48 00 00 B4 */	b lbl_80A949D0
lbl_80A94920:
/* 80A94920  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A94924  2C 00 00 00 */	cmpwi r0, 0
/* 80A94928  41 82 00 28 */	beq lbl_80A94950
/* 80A9492C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A94930  4B 6B 0D CD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A94934  38 00 00 00 */	li r0, 0
/* 80A94938  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A9493C  3C 60 80 A9 */	lis r3, lit_4347@ha /* 0x80A96B0C@ha */
/* 80A94940  C0 03 6B 0C */	lfs f0, lit_4347@l(r3)  /* 0x80A96B0C@l */
/* 80A94944  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A94948  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A9494C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A94950:
/* 80A94950  38 00 00 00 */	li r0, 0
/* 80A94954  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A94958  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A9495C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A94960  7C 04 00 00 */	cmpw r4, r0
/* 80A94964  41 82 00 58 */	beq lbl_80A949BC
/* 80A94968  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80A9496C  28 00 00 00 */	cmplwi r0, 0
/* 80A94970  41 82 00 30 */	beq lbl_80A949A0
/* 80A94974  7F E3 FB 78 */	mr r3, r31
/* 80A94978  38 A0 00 1C */	li r5, 0x1c
/* 80A9497C  38 C0 00 11 */	li r6, 0x11
/* 80A94980  38 E0 00 0F */	li r7, 0xf
/* 80A94984  39 00 00 00 */	li r8, 0
/* 80A94988  4B 6B 6C C1 */	bl step__8daNpcT_cFsiiii
/* 80A9498C  2C 03 00 00 */	cmpwi r3, 0
/* 80A94990  41 82 00 20 */	beq lbl_80A949B0
/* 80A94994  38 00 00 01 */	li r0, 1
/* 80A94998  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80A9499C  48 00 00 14 */	b lbl_80A949B0
lbl_80A949A0:
/* 80A949A0  7F E3 FB 78 */	mr r3, r31
/* 80A949A4  4B 6B 60 75 */	bl setAngle__8daNpcT_cFs
/* 80A949A8  38 00 00 01 */	li r0, 1
/* 80A949AC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A949B0:
/* 80A949B0  38 00 00 00 */	li r0, 0
/* 80A949B4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A949B8  48 00 00 18 */	b lbl_80A949D0
lbl_80A949BC:
/* 80A949BC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A949C0  28 00 00 00 */	cmplwi r0, 0
/* 80A949C4  40 82 00 0C */	bne lbl_80A949D0
/* 80A949C8  7F E3 FB 78 */	mr r3, r31
/* 80A949CC  4B 6B 69 6D */	bl srchPlayerActor__8daNpcT_cFv
lbl_80A949D0:
/* 80A949D0  38 60 00 01 */	li r3, 1
/* 80A949D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A949D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A949DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A949E0  7C 08 03 A6 */	mtlr r0
/* 80A949E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A949E8  4E 80 00 20 */	blr 
