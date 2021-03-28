lbl_80AD3508:
/* 80AD3508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD350C  7C 08 02 A6 */	mflr r0
/* 80AD3510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD3514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD3518  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD351C  7C 7F 1B 78 */	mr r31, r3
/* 80AD3520  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AD3524  2C 00 00 02 */	cmpwi r0, 2
/* 80AD3528  41 82 00 B8 */	beq lbl_80AD35E0
/* 80AD352C  40 80 00 CC */	bge lbl_80AD35F8
/* 80AD3530  2C 00 00 00 */	cmpwi r0, 0
/* 80AD3534  40 80 00 0C */	bge lbl_80AD3540
/* 80AD3538  48 00 00 C0 */	b lbl_80AD35F8
/* 80AD353C  48 00 00 BC */	b lbl_80AD35F8
lbl_80AD3540:
/* 80AD3540  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AD3544  2C 00 00 0D */	cmpwi r0, 0xd
/* 80AD3548  41 82 00 28 */	beq lbl_80AD3570
/* 80AD354C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AD3550  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD3554  4B 67 23 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3558  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AD355C  38 00 00 0D */	li r0, 0xd
/* 80AD3560  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AD3564  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD3568  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD356C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AD3570:
/* 80AD3570  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AD3574  2C 00 00 17 */	cmpwi r0, 0x17
/* 80AD3578  41 82 00 28 */	beq lbl_80AD35A0
/* 80AD357C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AD3580  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD3584  4B 67 23 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3588  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AD358C  38 00 00 17 */	li r0, 0x17
/* 80AD3590  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AD3594  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD3598  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD359C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AD35A0:
/* 80AD35A0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AD35A4  2C 00 00 00 */	cmpwi r0, 0
/* 80AD35A8  41 82 00 28 */	beq lbl_80AD35D0
/* 80AD35AC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD35B0  4B 67 21 4C */	b remove__18daNpcT_ActorMngr_cFv
/* 80AD35B4  38 00 00 00 */	li r0, 0
/* 80AD35B8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AD35BC  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD35C0  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD35C4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AD35C8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD35CC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AD35D0:
/* 80AD35D0  38 00 00 00 */	li r0, 0
/* 80AD35D4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD35D8  38 00 00 02 */	li r0, 2
/* 80AD35DC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD35E0:
/* 80AD35E0  80 1F 10 E8 */	lwz r0, 0x10e8(r31)
/* 80AD35E4  2C 00 00 02 */	cmpwi r0, 2
/* 80AD35E8  40 82 00 10 */	bne lbl_80AD35F8
/* 80AD35EC  38 00 00 01 */	li r0, 1
/* 80AD35F0  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80AD35F4  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80AD35F8:
/* 80AD35F8  38 60 00 01 */	li r3, 1
/* 80AD35FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD3600  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD3604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3608  7C 08 03 A6 */	mtlr r0
/* 80AD360C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD3610  4E 80 00 20 */	blr 
