lbl_80985C54:
/* 80985C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80985C58  7C 08 02 A6 */	mflr r0
/* 80985C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80985C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80985C64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80985C68  41 82 00 1C */	beq lbl_80985C84
/* 80985C6C  3C A0 80 99 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x8098BA38@ha */
/* 80985C70  38 05 BA 38 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x8098BA38@l */
/* 80985C74  90 1F 00 04 */	stw r0, 4(r31)
/* 80985C78  7C 80 07 35 */	extsh. r0, r4
/* 80985C7C  40 81 00 08 */	ble lbl_80985C84
/* 80985C80  4B 94 90 BD */	bl __dl__FPv
lbl_80985C84:
/* 80985C84  7F E3 FB 78 */	mr r3, r31
/* 80985C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80985C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80985C90  7C 08 03 A6 */	mtlr r0
/* 80985C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80985C98  4E 80 00 20 */	blr 
