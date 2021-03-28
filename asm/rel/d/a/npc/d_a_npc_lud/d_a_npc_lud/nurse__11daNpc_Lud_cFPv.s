lbl_80A6E32C:
/* 80A6E32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6E330  7C 08 02 A6 */	mflr r0
/* 80A6E334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6E338  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6E33C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A6E340  7C 7F 1B 78 */	mr r31, r3
/* 80A6E344  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A6E348  2C 00 00 02 */	cmpwi r0, 2
/* 80A6E34C  41 82 00 B0 */	beq lbl_80A6E3FC
/* 80A6E350  40 80 03 80 */	bge lbl_80A6E6D0
/* 80A6E354  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E358  40 80 00 0C */	bge lbl_80A6E364
/* 80A6E35C  48 00 03 74 */	b lbl_80A6E6D0
/* 80A6E360  48 00 03 70 */	b lbl_80A6E6D0
lbl_80A6E364:
/* 80A6E364  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A6E368  2C 00 00 0D */	cmpwi r0, 0xd
/* 80A6E36C  41 82 00 30 */	beq lbl_80A6E39C
/* 80A6E370  2C 00 00 03 */	cmpwi r0, 3
/* 80A6E374  41 82 00 28 */	beq lbl_80A6E39C
/* 80A6E378  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A6E37C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6E380  4B 6D 75 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E384  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A6E388  38 00 00 03 */	li r0, 3
/* 80A6E38C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A6E390  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E394  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E398  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A6E39C:
/* 80A6E39C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A6E3A0  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A6E3A4  41 82 00 30 */	beq lbl_80A6E3D4
/* 80A6E3A8  2C 00 00 02 */	cmpwi r0, 2
/* 80A6E3AC  41 82 00 28 */	beq lbl_80A6E3D4
/* 80A6E3B0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A6E3B4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6E3B8  4B 6D 74 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E3BC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A6E3C0  38 00 00 02 */	li r0, 2
/* 80A6E3C4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A6E3C8  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E3CC  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E3D0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A6E3D4:
/* 80A6E3D4  38 60 00 00 */	li r3, 0
/* 80A6E3D8  B0 7F 0E 1E */	sth r3, 0xe1e(r31)
/* 80A6E3DC  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6E3E0  28 00 00 06 */	cmplwi r0, 6
/* 80A6E3E4  40 82 00 10 */	bne lbl_80A6E3F4
/* 80A6E3E8  90 7F 0F C8 */	stw r3, 0xfc8(r31)
/* 80A6E3EC  38 00 00 01 */	li r0, 1
/* 80A6E3F0  90 1F 0F CC */	stw r0, 0xfcc(r31)
lbl_80A6E3F4:
/* 80A6E3F4  38 00 00 02 */	li r0, 2
/* 80A6E3F8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A6E3FC:
/* 80A6E3FC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A6E400  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E404  41 82 00 28 */	beq lbl_80A6E42C
/* 80A6E408  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A6E40C  4B 6D 72 F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A6E410  38 00 00 00 */	li r0, 0
/* 80A6E414  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A6E418  3C 60 80 A7 */	lis r3, lit_4218@ha
/* 80A6E41C  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)
/* 80A6E420  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A6E424  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6E428  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A6E42C:
/* 80A6E42C  38 00 00 00 */	li r0, 0
/* 80A6E430  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6E434  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80A6E438  60 00 00 04 */	ori r0, r0, 4
/* 80A6E43C  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80A6E440  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A6E444  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A6E448  41 82 00 E8 */	beq lbl_80A6E530
/* 80A6E44C  40 80 00 10 */	bge lbl_80A6E45C
/* 80A6E450  2C 00 00 02 */	cmpwi r0, 2
/* 80A6E454  41 82 00 14 */	beq lbl_80A6E468
/* 80A6E458  48 00 01 48 */	b lbl_80A6E5A0
lbl_80A6E45C:
/* 80A6E45C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A6E460  41 82 00 D0 */	beq lbl_80A6E530
/* 80A6E464  48 00 01 3C */	b lbl_80A6E5A0
lbl_80A6E468:
/* 80A6E468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A6E46C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A6E470  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A6E474  7F C3 F3 78 */	mr r3, r30
/* 80A6E478  4B 5D 9F 70 */	b getRunEventName__16dEvent_manager_cFv
/* 80A6E47C  3C 80 80 A7 */	lis r4, struct_80A6FECC+0x0@ha
/* 80A6E480  38 84 FE CC */	addi r4, r4, struct_80A6FECC+0x0@l
/* 80A6E484  38 84 00 C3 */	addi r4, r4, 0xc3
/* 80A6E488  4B 8F A5 0C */	b strcmp
/* 80A6E48C  2C 03 00 00 */	cmpwi r3, 0
/* 80A6E490  41 82 01 10 */	beq lbl_80A6E5A0
/* 80A6E494  7F C3 F3 78 */	mr r3, r30
/* 80A6E498  4B 5D 9F 50 */	b getRunEventName__16dEvent_manager_cFv
/* 80A6E49C  3C 80 80 A7 */	lis r4, struct_80A6FECC+0x0@ha
/* 80A6E4A0  38 84 FE CC */	addi r4, r4, struct_80A6FECC+0x0@l
/* 80A6E4A4  38 84 00 E0 */	addi r4, r4, 0xe0
/* 80A6E4A8  4B 8F A4 EC */	b strcmp
/* 80A6E4AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A6E4B0  41 82 00 F0 */	beq lbl_80A6E5A0
/* 80A6E4B4  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6E4B8  28 00 00 06 */	cmplwi r0, 6
/* 80A6E4BC  41 82 00 E4 */	beq lbl_80A6E5A0
/* 80A6E4C0  A0 1F 0E 1E */	lhz r0, 0xe1e(r31)
/* 80A6E4C4  28 00 00 02 */	cmplwi r0, 2
/* 80A6E4C8  41 80 00 D8 */	blt lbl_80A6E5A0
/* 80A6E4CC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A6E4D0  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A6E4D4  41 82 00 28 */	beq lbl_80A6E4FC
/* 80A6E4D8  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A6E4DC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6E4E0  4B 6D 73 B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E4E4  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A6E4E8  38 00 00 0B */	li r0, 0xb
/* 80A6E4EC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A6E4F0  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E4F4  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E4F8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A6E4FC:
/* 80A6E4FC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A6E500  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A6E504  41 82 00 9C */	beq lbl_80A6E5A0
/* 80A6E508  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A6E50C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6E510  4B 6D 73 88 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E514  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A6E518  38 00 00 0C */	li r0, 0xc
/* 80A6E51C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A6E520  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E524  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E528  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A6E52C  48 00 00 74 */	b lbl_80A6E5A0
lbl_80A6E530:
/* 80A6E530  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6E534  4B 6D 74 F0 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80A6E538  2C 03 00 00 */	cmpwi r3, 0
/* 80A6E53C  41 82 00 64 */	beq lbl_80A6E5A0
/* 80A6E540  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A6E544  2C 00 00 03 */	cmpwi r0, 3
/* 80A6E548  41 82 00 28 */	beq lbl_80A6E570
/* 80A6E54C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A6E550  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6E554  4B 6D 73 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E558  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A6E55C  38 00 00 03 */	li r0, 3
/* 80A6E560  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A6E564  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E568  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E56C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A6E570:
/* 80A6E570  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A6E574  2C 00 00 02 */	cmpwi r0, 2
/* 80A6E578  41 82 00 28 */	beq lbl_80A6E5A0
/* 80A6E57C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A6E580  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6E584  4B 6D 73 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E588  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A6E58C  38 00 00 02 */	li r0, 2
/* 80A6E590  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A6E594  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E598  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E59C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A6E5A0:
/* 80A6E5A0  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6E5A4  28 00 00 06 */	cmplwi r0, 6
/* 80A6E5A8  40 82 01 28 */	bne lbl_80A6E6D0
/* 80A6E5AC  80 1F 0F C8 */	lwz r0, 0xfc8(r31)
/* 80A6E5B0  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E5B4  41 82 00 8C */	beq lbl_80A6E640
/* 80A6E5B8  38 7F 0F C8 */	addi r3, r31, 0xfc8
/* 80A6E5BC  48 00 15 19 */	bl func_80A6FAD4
/* 80A6E5C0  38 7F 0F CC */	addi r3, r31, 0xfcc
/* 80A6E5C4  48 00 15 11 */	bl func_80A6FAD4
/* 80A6E5C8  80 1F 0F C8 */	lwz r0, 0xfc8(r31)
/* 80A6E5CC  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E5D0  40 82 01 00 */	bne lbl_80A6E6D0
/* 80A6E5D4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A6E5D8  2C 00 00 03 */	cmpwi r0, 3
/* 80A6E5DC  41 82 00 28 */	beq lbl_80A6E604
/* 80A6E5E0  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A6E5E4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6E5E8  4B 6D 72 B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E5EC  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A6E5F0  38 00 00 03 */	li r0, 3
/* 80A6E5F4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A6E5F8  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E5FC  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E600  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A6E604:
/* 80A6E604  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A6E608  2C 00 00 02 */	cmpwi r0, 2
/* 80A6E60C  41 82 00 28 */	beq lbl_80A6E634
/* 80A6E610  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A6E614  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6E618  4B 6D 72 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E61C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A6E620  38 00 00 02 */	li r0, 2
/* 80A6E624  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A6E628  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E62C  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E630  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A6E634:
/* 80A6E634  38 00 00 5C */	li r0, 0x5c
/* 80A6E638  90 1F 0F CC */	stw r0, 0xfcc(r31)
/* 80A6E63C  48 00 00 94 */	b lbl_80A6E6D0
lbl_80A6E640:
/* 80A6E640  80 1F 0F CC */	lwz r0, 0xfcc(r31)
/* 80A6E644  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E648  41 82 00 88 */	beq lbl_80A6E6D0
/* 80A6E64C  38 7F 0F C8 */	addi r3, r31, 0xfc8
/* 80A6E650  48 00 14 85 */	bl func_80A6FAD4
/* 80A6E654  38 7F 0F CC */	addi r3, r31, 0xfcc
/* 80A6E658  48 00 14 7D */	bl func_80A6FAD4
/* 80A6E65C  80 1F 0F CC */	lwz r0, 0xfcc(r31)
/* 80A6E660  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E664  40 82 00 6C */	bne lbl_80A6E6D0
/* 80A6E668  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A6E66C  2C 00 00 04 */	cmpwi r0, 4
/* 80A6E670  41 82 00 28 */	beq lbl_80A6E698
/* 80A6E674  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A6E678  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6E67C  4B 6D 72 1C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E680  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A6E684  38 00 00 04 */	li r0, 4
/* 80A6E688  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A6E68C  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E690  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E694  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A6E698:
/* 80A6E698  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A6E69C  2C 00 00 06 */	cmpwi r0, 6
/* 80A6E6A0  41 82 00 28 */	beq lbl_80A6E6C8
/* 80A6E6A4  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A6E6A8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6E6AC  4B 6D 71 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E6B0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A6E6B4  38 00 00 06 */	li r0, 6
/* 80A6E6B8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A6E6BC  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E6C0  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E6C4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A6E6C8:
/* 80A6E6C8  38 00 00 5C */	li r0, 0x5c
/* 80A6E6CC  90 1F 0F C8 */	stw r0, 0xfc8(r31)
lbl_80A6E6D0:
/* 80A6E6D0  38 60 00 01 */	li r3, 1
/* 80A6E6D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6E6D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6E6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6E6E0  7C 08 03 A6 */	mtlr r0
/* 80A6E6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6E6E8  4E 80 00 20 */	blr 
