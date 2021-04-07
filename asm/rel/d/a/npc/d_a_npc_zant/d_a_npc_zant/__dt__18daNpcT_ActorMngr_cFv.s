lbl_80B6E154:
/* 80B6E154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6E158  7C 08 02 A6 */	mflr r0
/* 80B6E15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6E160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6E164  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6E168  41 82 00 1C */	beq lbl_80B6E184
/* 80B6E16C  3C A0 80 B7 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B6EC1C@ha */
/* 80B6E170  38 05 EC 1C */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80B6EC1C@l */
/* 80B6E174  90 1F 00 04 */	stw r0, 4(r31)
/* 80B6E178  7C 80 07 35 */	extsh. r0, r4
/* 80B6E17C  40 81 00 08 */	ble lbl_80B6E184
/* 80B6E180  4B 76 0B BD */	bl __dl__FPv
lbl_80B6E184:
/* 80B6E184  7F E3 FB 78 */	mr r3, r31
/* 80B6E188  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6E18C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6E190  7C 08 03 A6 */	mtlr r0
/* 80B6E194  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6E198  4E 80 00 20 */	blr 
