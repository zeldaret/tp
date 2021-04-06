lbl_809A3570:
/* 809A3570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A3574  7C 08 02 A6 */	mflr r0
/* 809A3578  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A357C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A3580  93 C1 00 08 */	stw r30, 8(r1)
/* 809A3584  7C 7E 1B 79 */	or. r30, r3, r3
/* 809A3588  7C 9F 23 78 */	mr r31, r4
/* 809A358C  41 82 00 CC */	beq lbl_809A3658
/* 809A3590  34 1E 05 64 */	addic. r0, r30, 0x564
/* 809A3594  41 82 00 84 */	beq lbl_809A3618
/* 809A3598  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 809A359C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809A35A0  90 7E 05 A0 */	stw r3, 0x5a0(r30)
/* 809A35A4  38 03 00 2C */	addi r0, r3, 0x2c
/* 809A35A8  90 1E 06 84 */	stw r0, 0x684(r30)
/* 809A35AC  38 03 00 84 */	addi r0, r3, 0x84
/* 809A35B0  90 1E 06 9C */	stw r0, 0x69c(r30)
/* 809A35B4  34 1E 06 68 */	addic. r0, r30, 0x668
/* 809A35B8  41 82 00 54 */	beq lbl_809A360C
/* 809A35BC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 809A35C0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 809A35C4  90 7E 06 84 */	stw r3, 0x684(r30)
/* 809A35C8  38 03 00 58 */	addi r0, r3, 0x58
/* 809A35CC  90 1E 06 9C */	stw r0, 0x69c(r30)
/* 809A35D0  34 1E 06 88 */	addic. r0, r30, 0x688
/* 809A35D4  41 82 00 10 */	beq lbl_809A35E4
/* 809A35D8  3C 60 80 9A */	lis r3, __vt__8cM3dGCyl@ha /* 0x809A522C@ha */
/* 809A35DC  38 03 52 2C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x809A522C@l */
/* 809A35E0  90 1E 06 9C */	stw r0, 0x69c(r30)
lbl_809A35E4:
/* 809A35E4  34 1E 06 68 */	addic. r0, r30, 0x668
/* 809A35E8  41 82 00 24 */	beq lbl_809A360C
/* 809A35EC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809A35F0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809A35F4  90 1E 06 84 */	stw r0, 0x684(r30)
/* 809A35F8  34 1E 06 68 */	addic. r0, r30, 0x668
/* 809A35FC  41 82 00 10 */	beq lbl_809A360C
/* 809A3600  3C 60 80 9A */	lis r3, __vt__8cM3dGAab@ha /* 0x809A5220@ha */
/* 809A3604  38 03 52 20 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809A5220@l */
/* 809A3608  90 1E 06 80 */	stw r0, 0x680(r30)
lbl_809A360C:
/* 809A360C  38 7E 05 64 */	addi r3, r30, 0x564
/* 809A3610  38 80 00 00 */	li r4, 0
/* 809A3614  4B 6E 0A D1 */	bl __dt__12dCcD_GObjInfFv
lbl_809A3618:
/* 809A3618  34 1E 03 8C */	addic. r0, r30, 0x38c
/* 809A361C  41 82 00 2C */	beq lbl_809A3648
/* 809A3620  3C 60 80 9A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809A5238@ha */
/* 809A3624  38 63 52 38 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809A5238@l */
/* 809A3628  90 7E 03 9C */	stw r3, 0x39c(r30)
/* 809A362C  38 03 00 0C */	addi r0, r3, 0xc
/* 809A3630  90 1E 03 A0 */	stw r0, 0x3a0(r30)
/* 809A3634  38 03 00 18 */	addi r0, r3, 0x18
/* 809A3638  90 1E 03 B0 */	stw r0, 0x3b0(r30)
/* 809A363C  38 7E 03 8C */	addi r3, r30, 0x38c
/* 809A3640  38 80 00 00 */	li r4, 0
/* 809A3644  4B 6D 29 51 */	bl __dt__9dBgS_AcchFv
lbl_809A3648:
/* 809A3648  7F E0 07 35 */	extsh. r0, r31
/* 809A364C  40 81 00 0C */	ble lbl_809A3658
/* 809A3650  7F C3 F3 78 */	mr r3, r30
/* 809A3654  4B 92 B6 E9 */	bl __dl__FPv
lbl_809A3658:
/* 809A3658  7F C3 F3 78 */	mr r3, r30
/* 809A365C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A3660  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A3664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A3668  7C 08 03 A6 */	mtlr r0
/* 809A366C  38 21 00 10 */	addi r1, r1, 0x10
/* 809A3670  4E 80 00 20 */	blr 
