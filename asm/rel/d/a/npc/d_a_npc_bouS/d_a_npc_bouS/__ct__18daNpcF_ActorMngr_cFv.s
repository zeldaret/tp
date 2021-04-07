lbl_80977C08:
/* 80977C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80977C0C  7C 08 02 A6 */	mflr r0
/* 80977C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80977C14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80977C18  7C 7F 1B 78 */	mr r31, r3
/* 80977C1C  3C 80 80 98 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80978B34@ha */
/* 80977C20  38 04 8B 34 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80978B34@l */
/* 80977C24  90 03 00 04 */	stw r0, 4(r3)
/* 80977C28  4B 7D 8A 89 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80977C2C  7F E3 FB 78 */	mr r3, r31
/* 80977C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80977C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80977C38  7C 08 03 A6 */	mtlr r0
/* 80977C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80977C40  4E 80 00 20 */	blr 
