lbl_80CD3F08:
/* 80CD3F08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CD3F0C  7C 08 02 A6 */	mflr r0
/* 80CD3F10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD3F14  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD3F18  4B 68 E2 C5 */	bl _savegpr_29
/* 80CD3F1C  7C 7F 1B 78 */	mr r31, r3
/* 80CD3F20  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80CD3F24  2C 00 00 02 */	cmpwi r0, 2
/* 80CD3F28  41 82 02 CC */	beq lbl_80CD41F4
/* 80CD3F2C  40 80 03 14 */	bge lbl_80CD4240
/* 80CD3F30  2C 00 00 00 */	cmpwi r0, 0
/* 80CD3F34  40 80 00 0C */	bge lbl_80CD3F40
/* 80CD3F38  48 00 03 08 */	b lbl_80CD4240
/* 80CD3F3C  48 00 03 04 */	b lbl_80CD4240
lbl_80CD3F40:
/* 80CD3F40  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80CD3F44  2C 00 00 00 */	cmpwi r0, 0
/* 80CD3F48  40 82 02 AC */	bne lbl_80CD41F4
/* 80CD3F4C  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD3F50  2C 00 00 03 */	cmpwi r0, 3
/* 80CD3F54  41 82 01 00 */	beq lbl_80CD4054
/* 80CD3F58  40 80 00 18 */	bge lbl_80CD3F70
/* 80CD3F5C  2C 00 00 02 */	cmpwi r0, 2
/* 80CD3F60  40 80 00 90 */	bge lbl_80CD3FF0
/* 80CD3F64  2C 00 00 00 */	cmpwi r0, 0
/* 80CD3F68  40 80 00 18 */	bge lbl_80CD3F80
/* 80CD3F6C  48 00 02 14 */	b lbl_80CD4180
lbl_80CD3F70:
/* 80CD3F70  2C 00 00 05 */	cmpwi r0, 5
/* 80CD3F74  41 82 01 A8 */	beq lbl_80CD411C
/* 80CD3F78  40 80 02 08 */	bge lbl_80CD4180
/* 80CD3F7C  48 00 01 3C */	b lbl_80CD40B8
lbl_80CD3F80:
/* 80CD3F80  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80CD3F84  2C 00 00 00 */	cmpwi r0, 0
/* 80CD3F88  41 82 00 28 */	beq lbl_80CD3FB0
/* 80CD3F8C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80CD3F90  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CD3F94  4B 47 19 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD3F98  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80CD3F9C  38 00 00 00 */	li r0, 0
/* 80CD3FA0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80CD3FA4  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD3FA8  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD3FAC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80CD3FB0:
/* 80CD3FB0  7F E3 FB 78 */	mr r3, r31
/* 80CD3FB4  4B FF CE 35 */	bl getWaitMotionNo__15daObj_Sekizoa_cFv
/* 80CD3FB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CD3FBC  41 80 02 30 */	blt lbl_80CD41EC
/* 80CD3FC0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD3FC4  7C 1E 00 00 */	cmpw r30, r0
/* 80CD3FC8  41 82 02 24 */	beq lbl_80CD41EC
/* 80CD3FCC  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80CD3FD0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD3FD4  4B 47 18 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD3FD8  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80CD3FDC  93 DF 0B 7C */	stw r30, 0xb7c(r31)
/* 80CD3FE0  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD3FE4  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD3FE8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80CD3FEC  48 00 02 00 */	b lbl_80CD41EC
lbl_80CD3FF0:
/* 80CD3FF0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80CD3FF4  2C 00 00 00 */	cmpwi r0, 0
/* 80CD3FF8  41 82 00 28 */	beq lbl_80CD4020
/* 80CD3FFC  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80CD4000  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CD4004  4B 47 18 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD4008  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80CD400C  38 00 00 00 */	li r0, 0
/* 80CD4010  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80CD4014  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD4018  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD401C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80CD4020:
/* 80CD4020  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD4024  2C 00 00 02 */	cmpwi r0, 2
/* 80CD4028  41 82 01 C4 */	beq lbl_80CD41EC
/* 80CD402C  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80CD4030  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD4034  4B 47 18 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD4038  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80CD403C  38 00 00 02 */	li r0, 2
/* 80CD4040  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD4044  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD4048  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD404C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80CD4050  48 00 01 9C */	b lbl_80CD41EC
lbl_80CD4054:
/* 80CD4054  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80CD4058  2C 00 00 00 */	cmpwi r0, 0
/* 80CD405C  41 82 00 28 */	beq lbl_80CD4084
/* 80CD4060  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80CD4064  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CD4068  4B 47 18 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD406C  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80CD4070  38 00 00 00 */	li r0, 0
/* 80CD4074  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80CD4078  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD407C  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD4080  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80CD4084:
/* 80CD4084  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD4088  2C 00 00 0D */	cmpwi r0, 0xd
/* 80CD408C  41 82 01 60 */	beq lbl_80CD41EC
/* 80CD4090  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80CD4094  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD4098  4B 47 18 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD409C  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80CD40A0  38 00 00 0D */	li r0, 0xd
/* 80CD40A4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD40A8  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD40AC  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD40B0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80CD40B4  48 00 01 38 */	b lbl_80CD41EC
lbl_80CD40B8:
/* 80CD40B8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80CD40BC  2C 00 00 00 */	cmpwi r0, 0
/* 80CD40C0  41 82 00 28 */	beq lbl_80CD40E8
/* 80CD40C4  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80CD40C8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CD40CC  4B 47 17 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD40D0  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80CD40D4  38 00 00 00 */	li r0, 0
/* 80CD40D8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80CD40DC  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD40E0  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD40E4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80CD40E8:
/* 80CD40E8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD40EC  2C 00 00 02 */	cmpwi r0, 2
/* 80CD40F0  41 82 00 FC */	beq lbl_80CD41EC
/* 80CD40F4  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80CD40F8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD40FC  4B 47 17 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD4100  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80CD4104  38 00 00 02 */	li r0, 2
/* 80CD4108  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD410C  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD4110  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD4114  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80CD4118  48 00 00 D4 */	b lbl_80CD41EC
lbl_80CD411C:
/* 80CD411C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80CD4120  2C 00 00 00 */	cmpwi r0, 0
/* 80CD4124  41 82 00 28 */	beq lbl_80CD414C
/* 80CD4128  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80CD412C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CD4130  4B 47 17 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD4134  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80CD4138  38 00 00 00 */	li r0, 0
/* 80CD413C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80CD4140  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD4144  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD4148  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80CD414C:
/* 80CD414C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD4150  2C 00 00 0D */	cmpwi r0, 0xd
/* 80CD4154  41 82 00 98 */	beq lbl_80CD41EC
/* 80CD4158  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80CD415C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD4160  4B 47 17 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD4164  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80CD4168  38 00 00 0D */	li r0, 0xd
/* 80CD416C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD4170  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD4174  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD4178  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80CD417C  48 00 00 70 */	b lbl_80CD41EC
lbl_80CD4180:
/* 80CD4180  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80CD4184  2C 00 00 00 */	cmpwi r0, 0
/* 80CD4188  41 82 00 28 */	beq lbl_80CD41B0
/* 80CD418C  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80CD4190  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CD4194  4B 47 17 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD4198  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80CD419C  38 00 00 00 */	li r0, 0
/* 80CD41A0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80CD41A4  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD41A8  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD41AC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80CD41B0:
/* 80CD41B0  7F E3 FB 78 */	mr r3, r31
/* 80CD41B4  4B FF CC 35 */	bl getWaitMotionNo__15daObj_Sekizoa_cFv
/* 80CD41B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CD41BC  41 80 00 30 */	blt lbl_80CD41EC
/* 80CD41C0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD41C4  7C 1E 00 00 */	cmpw r30, r0
/* 80CD41C8  41 82 00 24 */	beq lbl_80CD41EC
/* 80CD41CC  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80CD41D0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD41D4  4B 47 16 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD41D8  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80CD41DC  93 DF 0B 7C */	stw r30, 0xb7c(r31)
/* 80CD41E0  3C 60 80 CD */	lis r3, lit_5307@ha /* 0x80CD5E14@ha */
/* 80CD41E4  C0 03 5E 14 */	lfs f0, lit_5307@l(r3)  /* 0x80CD5E14@l */
/* 80CD41E8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80CD41EC:
/* 80CD41EC  38 00 00 02 */	li r0, 2
/* 80CD41F0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80CD41F4:
/* 80CD41F4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80CD41F8  2C 00 00 00 */	cmpwi r0, 0
/* 80CD41FC  40 82 00 3C */	bne lbl_80CD4238
/* 80CD4200  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80CD4204  2C 00 00 00 */	cmpwi r0, 0
/* 80CD4208  41 82 00 28 */	beq lbl_80CD4230
/* 80CD420C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80CD4210  4B 47 14 ED */	bl remove__18daNpcT_ActorMngr_cFv
/* 80CD4214  38 00 00 00 */	li r0, 0
/* 80CD4218  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80CD421C  3C 60 80 CD */	lis r3, lit_4350@ha /* 0x80CD5DBC@ha */
/* 80CD4220  C0 03 5D BC */	lfs f0, lit_4350@l(r3)  /* 0x80CD5DBC@l */
/* 80CD4224  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80CD4228  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80CD422C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80CD4230:
/* 80CD4230  38 00 00 00 */	li r0, 0
/* 80CD4234  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80CD4238:
/* 80CD4238  38 00 00 00 */	li r0, 0
/* 80CD423C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80CD4240:
/* 80CD4240  38 60 00 01 */	li r3, 1
/* 80CD4244  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD4248  4B 68 DF E1 */	bl _restgpr_29
/* 80CD424C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CD4250  7C 08 03 A6 */	mtlr r0
/* 80CD4254  38 21 00 20 */	addi r1, r1, 0x20
/* 80CD4258  4E 80 00 20 */	blr 
