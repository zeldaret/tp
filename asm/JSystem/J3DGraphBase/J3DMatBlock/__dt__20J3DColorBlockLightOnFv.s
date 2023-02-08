lbl_80323018:
/* 80323018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032301C  7C 08 02 A6 */	mflr r0
/* 80323020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80323024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80323028  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032302C  41 82 00 30 */	beq lbl_8032305C
/* 80323030  3C 60 80 3D */	lis r3, __vt__20J3DColorBlockLightOn@ha /* 0x803CE678@ha */
/* 80323034  38 03 E6 78 */	addi r0, r3, __vt__20J3DColorBlockLightOn@l /* 0x803CE678@l */
/* 80323038  90 1F 00 00 */	stw r0, 0(r31)
/* 8032303C  41 82 00 10 */	beq lbl_8032304C
/* 80323040  3C 60 80 3D */	lis r3, __vt__13J3DColorBlock@ha /* 0x803CDEA0@ha */
/* 80323044  38 03 DE A0 */	addi r0, r3, __vt__13J3DColorBlock@l /* 0x803CDEA0@l */
/* 80323048  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032304C:
/* 8032304C  7C 80 07 35 */	extsh. r0, r4
/* 80323050  40 81 00 0C */	ble lbl_8032305C
/* 80323054  7F E3 FB 78 */	mr r3, r31
/* 80323058  4B FA BC E5 */	bl __dl__FPv
lbl_8032305C:
/* 8032305C  7F E3 FB 78 */	mr r3, r31
/* 80323060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80323064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80323068  7C 08 03 A6 */	mtlr r0
/* 8032306C  38 21 00 10 */	addi r1, r1, 0x10
/* 80323070  4E 80 00 20 */	blr 
