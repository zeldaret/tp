lbl_8034BD2C:
/* 8034BD2C  7C 08 02 A6 */	mflr r0
/* 8034BD30  2C 03 00 00 */	cmpwi r3, 0
/* 8034BD34  90 01 00 04 */	stw r0, 4(r1)
/* 8034BD38  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034BD3C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034BD40  3B E4 00 00 */	addi r31, r4, 0
/* 8034BD44  40 81 00 7C */	ble lbl_8034BDC0
/* 8034BD48  80 0D 92 50 */	lwz r0, status(r13)
/* 8034BD4C  2C 00 00 01 */	cmpwi r0, 1
/* 8034BD50  41 82 00 3C */	beq lbl_8034BD8C
/* 8034BD54  40 80 00 9C */	bge lbl_8034BDF0
/* 8034BD58  2C 00 00 00 */	cmpwi r0, 0
/* 8034BD5C  40 80 00 08 */	bge lbl_8034BD64
/* 8034BD60  48 00 00 90 */	b lbl_8034BDF0
lbl_8034BD64:
/* 8034BD64  38 00 00 01 */	li r0, 1
/* 8034BD68  80 8D 92 54 */	lwz r4, bb2(r13)
/* 8034BD6C  3C 60 80 35 */	lis r3, cb@ha /* 0x8034BD2C@ha */
/* 8034BD70  90 0D 92 50 */	stw r0, status(r13)
/* 8034BD74  38 E3 BD 2C */	addi r7, r3, cb@l /* 0x8034BD2C@l */
/* 8034BD78  38 7F 00 00 */	addi r3, r31, 0
/* 8034BD7C  38 A0 00 20 */	li r5, 0x20
/* 8034BD80  38 C0 04 20 */	li r6, 0x420
/* 8034BD84  4B FF F0 85 */	bl DVDReadAbsAsyncForBS
/* 8034BD88  48 00 00 68 */	b lbl_8034BDF0
lbl_8034BD8C:
/* 8034BD8C  38 00 00 02 */	li r0, 2
/* 8034BD90  80 CD 92 54 */	lwz r6, bb2(r13)
/* 8034BD94  90 0D 92 50 */	stw r0, status(r13)
/* 8034BD98  3C 60 80 35 */	lis r3, cb@ha /* 0x8034BD2C@ha */
/* 8034BD9C  38 E3 BD 2C */	addi r7, r3, cb@l /* 0x8034BD2C@l */
/* 8034BDA0  80 A6 00 08 */	lwz r5, 8(r6)
/* 8034BDA4  7F E3 FB 78 */	mr r3, r31
/* 8034BDA8  80 86 00 10 */	lwz r4, 0x10(r6)
/* 8034BDAC  38 05 00 1F */	addi r0, r5, 0x1f
/* 8034BDB0  80 C6 00 04 */	lwz r6, 4(r6)
/* 8034BDB4  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 8034BDB8  4B FF F0 51 */	bl DVDReadAbsAsyncForBS
/* 8034BDBC  48 00 00 34 */	b lbl_8034BDF0
lbl_8034BDC0:
/* 8034BDC0  2C 03 FF FF */	cmpwi r3, -1
/* 8034BDC4  41 82 00 2C */	beq lbl_8034BDF0
/* 8034BDC8  2C 03 FF FC */	cmpwi r3, -4
/* 8034BDCC  40 82 00 24 */	bne lbl_8034BDF0
/* 8034BDD0  38 00 00 00 */	li r0, 0
/* 8034BDD4  90 0D 92 50 */	stw r0, status(r13)
/* 8034BDD8  4B FF F3 61 */	bl DVDReset
/* 8034BDDC  3C 60 80 35 */	lis r3, cb@ha /* 0x8034BD2C@ha */
/* 8034BDE0  80 8D 92 58 */	lwz r4, idTmp(r13)
/* 8034BDE4  38 A3 BD 2C */	addi r5, r3, cb@l /* 0x8034BD2C@l */
/* 8034BDE8  38 7F 00 00 */	addi r3, r31, 0
/* 8034BDEC  4B FF F0 ED */	bl DVDReadDiskID
lbl_8034BDF0:
/* 8034BDF0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034BDF4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034BDF8  38 21 00 18 */	addi r1, r1, 0x18
/* 8034BDFC  7C 08 03 A6 */	mtlr r0
/* 8034BE00  4E 80 00 20 */	blr 
