lbl_809AF450:
/* 809AF450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AF454  7C 08 02 A6 */	mflr r0
/* 809AF458  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AF45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AF460  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AF464  41 82 00 1C */	beq lbl_809AF480
/* 809AF468  3C A0 80 9B */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x809AFC04@ha */
/* 809AF46C  38 05 FC 04 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x809AFC04@l */
/* 809AF470  90 1F 00 04 */	stw r0, 4(r31)
/* 809AF474  7C 80 07 35 */	extsh. r0, r4
/* 809AF478  40 81 00 08 */	ble lbl_809AF480
/* 809AF47C  4B 91 F8 C1 */	bl __dl__FPv
lbl_809AF480:
/* 809AF480  7F E3 FB 78 */	mr r3, r31
/* 809AF484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AF488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AF48C  7C 08 03 A6 */	mtlr r0
/* 809AF490  38 21 00 10 */	addi r1, r1, 0x10
/* 809AF494  4E 80 00 20 */	blr 
