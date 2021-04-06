lbl_8036DD14:
/* 8036DD14  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8036DD18  7C 08 02 A6 */	mflr r0
/* 8036DD1C  3C 80 80 3A */	lis r4, lit_321@ha /* 0x803A28D0@ha */
/* 8036DD20  90 01 00 54 */	stw r0, 0x54(r1)
/* 8036DD24  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8036DD28  3B E4 28 D0 */	addi r31, r4, lit_321@l /* 0x803A28D0@l */
/* 8036DD2C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8036DD30  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8036DD34  8B C3 00 1C */	lbz r30, 0x1c(r3)
/* 8036DD38  28 00 00 01 */	cmplwi r0, 1
/* 8036DD3C  40 82 00 30 */	bne lbl_8036DD6C
/* 8036DD40  38 7F 00 00 */	addi r3, r31, 0
/* 8036DD44  4B FF FD D1 */	bl usr_puts_serial
/* 8036DD48  28 1E 00 00 */	cmplwi r30, 0
/* 8036DD4C  41 82 00 10 */	beq lbl_8036DD5C
/* 8036DD50  38 7F 00 20 */	addi r3, r31, 0x20
/* 8036DD54  4B FF FD C1 */	bl usr_puts_serial
/* 8036DD58  48 00 00 0C */	b lbl_8036DD64
lbl_8036DD5C:
/* 8036DD5C  38 7F 00 28 */	addi r3, r31, 0x28
/* 8036DD60  4B FF FD B5 */	bl usr_puts_serial
lbl_8036DD64:
/* 8036DD64  7F C3 F3 78 */	mr r3, r30
/* 8036DD68  48 00 44 29 */	bl SetUseSerialIO
lbl_8036DD6C:
/* 8036DD6C  38 61 00 08 */	addi r3, r1, 8
/* 8036DD70  38 80 00 00 */	li r4, 0
/* 8036DD74  38 A0 00 40 */	li r5, 0x40
/* 8036DD78  4B C9 56 E1 */	bl memset
/* 8036DD7C  38 60 00 80 */	li r3, 0x80
/* 8036DD80  38 A0 00 40 */	li r5, 0x40
/* 8036DD84  38 00 00 00 */	li r0, 0
/* 8036DD88  98 61 00 0C */	stb r3, 0xc(r1)
/* 8036DD8C  38 61 00 08 */	addi r3, r1, 8
/* 8036DD90  38 80 00 40 */	li r4, 0x40
/* 8036DD94  90 A1 00 08 */	stw r5, 8(r1)
/* 8036DD98  98 01 00 10 */	stb r0, 0x10(r1)
/* 8036DD9C  48 00 3F CD */	bl TRKWriteUARTN
/* 8036DDA0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8036DDA4  38 60 00 00 */	li r3, 0
/* 8036DDA8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8036DDAC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8036DDB0  7C 08 03 A6 */	mtlr r0
/* 8036DDB4  38 21 00 50 */	addi r1, r1, 0x50
/* 8036DDB8  4E 80 00 20 */	blr 
