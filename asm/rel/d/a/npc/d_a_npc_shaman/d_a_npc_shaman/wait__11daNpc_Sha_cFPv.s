lbl_80AE4E24:
/* 80AE4E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE4E28  7C 08 02 A6 */	mflr r0
/* 80AE4E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE4E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE4E34  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE4E38  7C 7F 1B 78 */	mr r31, r3
/* 80AE4E3C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AE4E40  2C 00 00 02 */	cmpwi r0, 2
/* 80AE4E44  41 82 00 8C */	beq lbl_80AE4ED0
/* 80AE4E48  40 80 02 88 */	bge lbl_80AE50D0
/* 80AE4E4C  2C 00 00 00 */	cmpwi r0, 0
/* 80AE4E50  40 80 00 0C */	bge lbl_80AE4E5C
/* 80AE4E54  48 00 02 7C */	b lbl_80AE50D0
/* 80AE4E58  48 00 02 78 */	b lbl_80AE50D0
lbl_80AE4E5C:
/* 80AE4E5C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AE4E60  2C 00 00 00 */	cmpwi r0, 0
/* 80AE4E64  40 82 00 6C */	bne lbl_80AE4ED0
/* 80AE4E68  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AE4E6C  2C 00 00 09 */	cmpwi r0, 9
/* 80AE4E70  41 82 00 28 */	beq lbl_80AE4E98
/* 80AE4E74  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AE4E78  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AE4E7C  4B 66 0A 1D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AE4E80  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AE4E84  38 00 00 09 */	li r0, 9
/* 80AE4E88  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AE4E8C  3C 60 80 AE */	lis r3, lit_4537@ha /* 0x80AE6C88@ha */
/* 80AE4E90  C0 03 6C 88 */	lfs f0, lit_4537@l(r3)  /* 0x80AE6C88@l */
/* 80AE4E94  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AE4E98:
/* 80AE4E98  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AE4E9C  2C 00 00 00 */	cmpwi r0, 0
/* 80AE4EA0  41 82 00 28 */	beq lbl_80AE4EC8
/* 80AE4EA4  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AE4EA8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AE4EAC  4B 66 09 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AE4EB0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AE4EB4  38 00 00 00 */	li r0, 0
/* 80AE4EB8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AE4EBC  3C 60 80 AE */	lis r3, lit_4537@ha /* 0x80AE6C88@ha */
/* 80AE4EC0  C0 03 6C 88 */	lfs f0, lit_4537@l(r3)  /* 0x80AE6C88@l */
/* 80AE4EC4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AE4EC8:
/* 80AE4EC8  38 00 00 02 */	li r0, 2
/* 80AE4ECC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AE4ED0:
/* 80AE4ED0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80AE4ED4  28 00 00 01 */	cmplwi r0, 1
/* 80AE4ED8  40 82 00 54 */	bne lbl_80AE4F2C
/* 80AE4EDC  38 00 00 00 */	li r0, 0
/* 80AE4EE0  98 1F 0F A0 */	stb r0, 0xfa0(r31)
/* 80AE4EE4  38 60 00 0B */	li r3, 0xb
/* 80AE4EE8  4B 66 7C 85 */	bl daNpcT_chkTmpBit__FUl
/* 80AE4EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80AE4EF0  41 82 00 3C */	beq lbl_80AE4F2C
/* 80AE4EF4  38 00 00 00 */	li r0, 0
/* 80AE4EF8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80AE4EFC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80AE4F00  98 03 13 0A */	stb r0, 0x130a(r3)
/* 80AE4F04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE4F08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE4F0C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80AE4F10  38 80 13 01 */	li r4, 0x1301
/* 80AE4F14  4B 54 FA 91 */	bl offEventBit__11dSv_event_cFUs
/* 80AE4F18  38 60 00 01 */	li r3, 1
/* 80AE4F1C  98 7F 0F A0 */	stb r3, 0xfa0(r31)
/* 80AE4F20  38 00 00 05 */	li r0, 5
/* 80AE4F24  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AE4F28  98 7F 0E 33 */	stb r3, 0xe33(r31)
lbl_80AE4F2C:
/* 80AE4F2C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AE4F30  2C 00 00 00 */	cmpwi r0, 0
/* 80AE4F34  40 82 01 9C */	bne lbl_80AE50D0
/* 80AE4F38  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80AE4F3C  28 00 00 01 */	cmplwi r0, 1
/* 80AE4F40  40 82 00 0C */	bne lbl_80AE4F4C
/* 80AE4F44  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AE4F48  4B 66 07 B5 */	bl remove__18daNpcT_ActorMngr_cFv
lbl_80AE4F4C:
/* 80AE4F4C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AE4F50  4B 66 07 B9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80AE4F54  28 03 00 00 */	cmplwi r3, 0
/* 80AE4F58  41 82 00 C8 */	beq lbl_80AE5020
/* 80AE4F5C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AE4F60  2C 00 00 01 */	cmpwi r0, 1
/* 80AE4F64  41 82 00 2C */	beq lbl_80AE4F90
/* 80AE4F68  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AE4F6C  4B 66 07 91 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AE4F70  38 00 00 00 */	li r0, 0
/* 80AE4F74  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AE4F78  3C 60 80 AE */	lis r3, lit_4185@ha /* 0x80AE6C74@ha */
/* 80AE4F7C  C0 03 6C 74 */	lfs f0, lit_4185@l(r3)  /* 0x80AE6C74@l */
/* 80AE4F80  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AE4F84  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE4F88  38 00 00 01 */	li r0, 1
/* 80AE4F8C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AE4F90:
/* 80AE4F90  38 00 00 00 */	li r0, 0
/* 80AE4F94  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE4F98  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AE4F9C  4B 66 07 6D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80AE4FA0  7C 64 1B 78 */	mr r4, r3
/* 80AE4FA4  7F E3 FB 78 */	mr r3, r31
/* 80AE4FA8  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80AE4FAC  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80AE4FB0  4B 66 5C 21 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80AE4FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80AE4FB8  40 82 00 3C */	bne lbl_80AE4FF4
/* 80AE4FBC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AE4FC0  2C 00 00 00 */	cmpwi r0, 0
/* 80AE4FC4  41 82 00 28 */	beq lbl_80AE4FEC
/* 80AE4FC8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AE4FCC  4B 66 07 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AE4FD0  38 00 00 00 */	li r0, 0
/* 80AE4FD4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AE4FD8  3C 60 80 AE */	lis r3, lit_4185@ha /* 0x80AE6C74@ha */
/* 80AE4FDC  C0 03 6C 74 */	lfs f0, lit_4185@l(r3)  /* 0x80AE6C74@l */
/* 80AE4FE0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AE4FE4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE4FE8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AE4FEC:
/* 80AE4FEC  38 00 00 00 */	li r0, 0
/* 80AE4FF0  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80AE4FF4:
/* 80AE4FF4  7F E3 FB 78 */	mr r3, r31
/* 80AE4FF8  4B 66 63 41 */	bl srchPlayerActor__8daNpcT_cFv
/* 80AE4FFC  2C 03 00 00 */	cmpwi r3, 0
/* 80AE5000  40 82 00 D0 */	bne lbl_80AE50D0
/* 80AE5004  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80AE5008  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AE500C  7C 03 00 00 */	cmpw r3, r0
/* 80AE5010  40 82 00 C0 */	bne lbl_80AE50D0
/* 80AE5014  38 00 00 01 */	li r0, 1
/* 80AE5018  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80AE501C  48 00 00 B4 */	b lbl_80AE50D0
lbl_80AE5020:
/* 80AE5020  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AE5024  2C 00 00 00 */	cmpwi r0, 0
/* 80AE5028  41 82 00 28 */	beq lbl_80AE5050
/* 80AE502C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AE5030  4B 66 06 CD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AE5034  38 00 00 00 */	li r0, 0
/* 80AE5038  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AE503C  3C 60 80 AE */	lis r3, lit_4185@ha /* 0x80AE6C74@ha */
/* 80AE5040  C0 03 6C 74 */	lfs f0, lit_4185@l(r3)  /* 0x80AE6C74@l */
/* 80AE5044  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AE5048  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE504C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AE5050:
/* 80AE5050  38 00 00 00 */	li r0, 0
/* 80AE5054  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE5058  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AE505C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AE5060  7C 04 00 00 */	cmpw r4, r0
/* 80AE5064  41 82 00 58 */	beq lbl_80AE50BC
/* 80AE5068  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80AE506C  28 00 00 00 */	cmplwi r0, 0
/* 80AE5070  41 82 00 30 */	beq lbl_80AE50A0
/* 80AE5074  7F E3 FB 78 */	mr r3, r31
/* 80AE5078  38 A0 FF FF */	li r5, -1
/* 80AE507C  38 C0 FF FF */	li r6, -1
/* 80AE5080  38 E0 00 0F */	li r7, 0xf
/* 80AE5084  39 00 00 00 */	li r8, 0
/* 80AE5088  4B 66 65 C1 */	bl step__8daNpcT_cFsiiii
/* 80AE508C  2C 03 00 00 */	cmpwi r3, 0
/* 80AE5090  41 82 00 20 */	beq lbl_80AE50B0
/* 80AE5094  38 00 00 01 */	li r0, 1
/* 80AE5098  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80AE509C  48 00 00 14 */	b lbl_80AE50B0
lbl_80AE50A0:
/* 80AE50A0  7F E3 FB 78 */	mr r3, r31
/* 80AE50A4  4B 66 59 75 */	bl setAngle__8daNpcT_cFs
/* 80AE50A8  38 00 00 01 */	li r0, 1
/* 80AE50AC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AE50B0:
/* 80AE50B0  38 00 00 00 */	li r0, 0
/* 80AE50B4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AE50B8  48 00 00 18 */	b lbl_80AE50D0
lbl_80AE50BC:
/* 80AE50BC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AE50C0  28 00 00 00 */	cmplwi r0, 0
/* 80AE50C4  40 82 00 0C */	bne lbl_80AE50D0
/* 80AE50C8  7F E3 FB 78 */	mr r3, r31
/* 80AE50CC  4B 66 62 6D */	bl srchPlayerActor__8daNpcT_cFv
lbl_80AE50D0:
/* 80AE50D0  38 60 00 01 */	li r3, 1
/* 80AE50D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE50D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE50DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE50E0  7C 08 03 A6 */	mtlr r0
/* 80AE50E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE50E8  4E 80 00 20 */	blr 
