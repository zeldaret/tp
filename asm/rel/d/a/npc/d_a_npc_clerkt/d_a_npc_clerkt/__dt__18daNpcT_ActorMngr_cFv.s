lbl_8099C2D4:
/* 8099C2D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099C2D8  7C 08 02 A6 */	mflr r0
/* 8099C2DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099C2E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099C2E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8099C2E8  41 82 00 1C */	beq lbl_8099C304
/* 8099C2EC  3C A0 80 9A */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x8099D548@ha */
/* 8099C2F0  38 05 D5 48 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x8099D548@l */
/* 8099C2F4  90 1F 00 04 */	stw r0, 4(r31)
/* 8099C2F8  7C 80 07 35 */	extsh. r0, r4
/* 8099C2FC  40 81 00 08 */	ble lbl_8099C304
/* 8099C300  4B 93 2A 3D */	bl __dl__FPv
lbl_8099C304:
/* 8099C304  7F E3 FB 78 */	mr r3, r31
/* 8099C308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099C30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099C310  7C 08 03 A6 */	mtlr r0
/* 8099C314  38 21 00 10 */	addi r1, r1, 0x10
/* 8099C318  4E 80 00 20 */	blr 
