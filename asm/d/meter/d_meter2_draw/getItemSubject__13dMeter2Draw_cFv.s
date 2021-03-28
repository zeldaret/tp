lbl_8021BC54:
/* 8021BC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021BC58  7C 08 02 A6 */	mflr r0
/* 8021BC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021BC60  4B F6 59 E1 */	bl dCam_getBody__Fv
/* 8021BC64  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8021BC68  2C 00 00 04 */	cmpwi r0, 4
/* 8021BC6C  41 82 00 2C */	beq lbl_8021BC98
/* 8021BC70  4B F6 59 D1 */	bl dCam_getBody__Fv
/* 8021BC74  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8021BC78  2C 00 00 07 */	cmpwi r0, 7
/* 8021BC7C  41 82 00 14 */	beq lbl_8021BC90
/* 8021BC80  4B F6 59 C1 */	bl dCam_getBody__Fv
/* 8021BC84  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8021BC88  2C 00 00 08 */	cmpwi r0, 8
/* 8021BC8C  40 82 00 0C */	bne lbl_8021BC98
lbl_8021BC90:
/* 8021BC90  38 60 00 01 */	li r3, 1
/* 8021BC94  48 00 00 08 */	b lbl_8021BC9C
lbl_8021BC98:
/* 8021BC98  38 60 00 00 */	li r3, 0
lbl_8021BC9C:
/* 8021BC9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021BCA0  7C 08 03 A6 */	mtlr r0
/* 8021BCA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8021BCA8  4E 80 00 20 */	blr 
