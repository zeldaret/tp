lbl_8071C3EC:
/* 8071C3EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071C3F0  7C 08 02 A6 */	mflr r0
/* 8071C3F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071C3F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071C3FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8071C400  41 82 00 1C */	beq lbl_8071C41C
/* 8071C404  3C A0 80 72 */	lis r5, __vt__12daE_MK_HIO_c@ha /* 0x8071CA50@ha */
/* 8071C408  38 05 CA 50 */	addi r0, r5, __vt__12daE_MK_HIO_c@l /* 0x8071CA50@l */
/* 8071C40C  90 1F 00 00 */	stw r0, 0(r31)
/* 8071C410  7C 80 07 35 */	extsh. r0, r4
/* 8071C414  40 81 00 08 */	ble lbl_8071C41C
/* 8071C418  4B BB 29 25 */	bl __dl__FPv
lbl_8071C41C:
/* 8071C41C  7F E3 FB 78 */	mr r3, r31
/* 8071C420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071C424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071C428  7C 08 03 A6 */	mtlr r0
/* 8071C42C  38 21 00 10 */	addi r1, r1, 0x10
/* 8071C430  4E 80 00 20 */	blr 
