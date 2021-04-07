lbl_803341E8:
/* 803341E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803341EC  7C 08 02 A6 */	mflr r0
/* 803341F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803341F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803341F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 803341FC  41 82 00 30 */	beq lbl_8033422C
/* 80334200  3C 60 80 3D */	lis r3, __vt__20J3DClusterLoader_v15@ha /* 0x803CF0E8@ha */
/* 80334204  38 03 F0 E8 */	addi r0, r3, __vt__20J3DClusterLoader_v15@l /* 0x803CF0E8@l */
/* 80334208  90 1F 00 00 */	stw r0, 0(r31)
/* 8033420C  41 82 00 10 */	beq lbl_8033421C
/* 80334210  3C 60 80 3D */	lis r3, __vt__16J3DClusterLoader@ha /* 0x803CF0F8@ha */
/* 80334214  38 03 F0 F8 */	addi r0, r3, __vt__16J3DClusterLoader@l /* 0x803CF0F8@l */
/* 80334218  90 1F 00 00 */	stw r0, 0(r31)
lbl_8033421C:
/* 8033421C  7C 80 07 35 */	extsh. r0, r4
/* 80334220  40 81 00 0C */	ble lbl_8033422C
/* 80334224  7F E3 FB 78 */	mr r3, r31
/* 80334228  4B F9 AB 15 */	bl __dl__FPv
lbl_8033422C:
/* 8033422C  7F E3 FB 78 */	mr r3, r31
/* 80334230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80334234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80334238  7C 08 03 A6 */	mtlr r0
/* 8033423C  38 21 00 10 */	addi r1, r1, 0x10
/* 80334240  4E 80 00 20 */	blr 
