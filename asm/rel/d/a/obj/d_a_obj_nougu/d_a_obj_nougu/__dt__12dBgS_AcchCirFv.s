lbl_80CA41EC:
/* 80CA41EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA41F0  7C 08 02 A6 */	mflr r0
/* 80CA41F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA41F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA41FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA4200  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CA4204  7C 9F 23 78 */	mr r31, r4
/* 80CA4208  41 82 00 38 */	beq lbl_80CA4240
/* 80CA420C  3C 60 80 CA */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CA4AE8@ha */
/* 80CA4210  38 03 4A E8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CA4AE8@l */
/* 80CA4214  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CA4218  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CA421C  38 80 FF FF */	li r4, -1
/* 80CA4220  4B 5C AC F9 */	bl __dt__8cM3dGCirFv
/* 80CA4224  7F C3 F3 78 */	mr r3, r30
/* 80CA4228  38 80 00 00 */	li r4, 0
/* 80CA422C  4B 5C 3E 85 */	bl __dt__13cBgS_PolyInfoFv
/* 80CA4230  7F E0 07 35 */	extsh. r0, r31
/* 80CA4234  40 81 00 0C */	ble lbl_80CA4240
/* 80CA4238  7F C3 F3 78 */	mr r3, r30
/* 80CA423C  4B 62 AB 01 */	bl __dl__FPv
lbl_80CA4240:
/* 80CA4240  7F C3 F3 78 */	mr r3, r30
/* 80CA4244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA4248  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA424C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4250  7C 08 03 A6 */	mtlr r0
/* 80CA4254  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4258  4E 80 00 20 */	blr 
