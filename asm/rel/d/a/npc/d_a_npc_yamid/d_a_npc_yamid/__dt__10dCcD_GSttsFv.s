lbl_80B458E0:
/* 80B458E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B458E4  7C 08 02 A6 */	mflr r0
/* 80B458E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B458EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B458F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B458F4  41 82 00 30 */	beq lbl_80B45924
/* 80B458F8  3C 60 80 B4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B46344@ha */
/* 80B458FC  38 03 63 44 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B46344@l */
/* 80B45900  90 1F 00 00 */	stw r0, 0(r31)
/* 80B45904  41 82 00 10 */	beq lbl_80B45914
/* 80B45908  3C 60 80 B4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B46338@ha */
/* 80B4590C  38 03 63 38 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B46338@l */
/* 80B45910  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B45914:
/* 80B45914  7C 80 07 35 */	extsh. r0, r4
/* 80B45918  40 81 00 0C */	ble lbl_80B45924
/* 80B4591C  7F E3 FB 78 */	mr r3, r31
/* 80B45920  4B 78 94 1D */	bl __dl__FPv
lbl_80B45924:
/* 80B45924  7F E3 FB 78 */	mr r3, r31
/* 80B45928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4592C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B45930  7C 08 03 A6 */	mtlr r0
/* 80B45934  38 21 00 10 */	addi r1, r1, 0x10
/* 80B45938  4E 80 00 20 */	blr 
