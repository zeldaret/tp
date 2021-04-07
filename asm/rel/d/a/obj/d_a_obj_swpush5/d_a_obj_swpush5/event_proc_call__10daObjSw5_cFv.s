lbl_8059BD2C:
/* 8059BD2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BD30  7C 08 02 A6 */	mflr r0
/* 8059BD34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BD38  3C 80 80 5A */	lis r4, cNullVec__6Z2Calc@ha /* 0x8059C6DC@ha */
/* 8059BD3C  38 84 C6 DC */	addi r4, r4, cNullVec__6Z2Calc@l /* 0x8059C6DC@l */
/* 8059BD40  3C A0 80 5A */	lis r5, struct_8059C914+0x0@ha /* 0x8059C914@ha */
/* 8059BD44  38 E5 C9 14 */	addi r7, r5, struct_8059C914+0x0@l /* 0x8059C914@l */
/* 8059BD48  88 07 00 00 */	lbz r0, 0(r7)
/* 8059BD4C  7C 00 07 75 */	extsb. r0, r0
/* 8059BD50  40 82 00 A0 */	bne lbl_8059BDF0
/* 8059BD54  80 A4 00 24 */	lwz r5, 0x24(r4)
/* 8059BD58  80 04 00 28 */	lwz r0, 0x28(r4)
/* 8059BD5C  90 A4 00 6C */	stw r5, 0x6c(r4)
/* 8059BD60  90 04 00 70 */	stw r0, 0x70(r4)
/* 8059BD64  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 8059BD68  90 04 00 74 */	stw r0, 0x74(r4)
/* 8059BD6C  38 C4 00 6C */	addi r6, r4, 0x6c
/* 8059BD70  80 A4 00 30 */	lwz r5, 0x30(r4)
/* 8059BD74  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8059BD78  90 A6 00 0C */	stw r5, 0xc(r6)
/* 8059BD7C  90 06 00 10 */	stw r0, 0x10(r6)
/* 8059BD80  80 04 00 38 */	lwz r0, 0x38(r4)
/* 8059BD84  90 06 00 14 */	stw r0, 0x14(r6)
/* 8059BD88  80 A4 00 3C */	lwz r5, 0x3c(r4)
/* 8059BD8C  80 04 00 40 */	lwz r0, 0x40(r4)
/* 8059BD90  90 A6 00 18 */	stw r5, 0x18(r6)
/* 8059BD94  90 06 00 1C */	stw r0, 0x1c(r6)
/* 8059BD98  80 04 00 44 */	lwz r0, 0x44(r4)
/* 8059BD9C  90 06 00 20 */	stw r0, 0x20(r6)
/* 8059BDA0  80 A4 00 48 */	lwz r5, 0x48(r4)
/* 8059BDA4  80 04 00 4C */	lwz r0, 0x4c(r4)
/* 8059BDA8  90 A6 00 24 */	stw r5, 0x24(r6)
/* 8059BDAC  90 06 00 28 */	stw r0, 0x28(r6)
/* 8059BDB0  80 04 00 50 */	lwz r0, 0x50(r4)
/* 8059BDB4  90 06 00 2C */	stw r0, 0x2c(r6)
/* 8059BDB8  80 A4 00 54 */	lwz r5, 0x54(r4)
/* 8059BDBC  80 04 00 58 */	lwz r0, 0x58(r4)
/* 8059BDC0  90 A6 00 30 */	stw r5, 0x30(r6)
/* 8059BDC4  90 06 00 34 */	stw r0, 0x34(r6)
/* 8059BDC8  80 04 00 5C */	lwz r0, 0x5c(r4)
/* 8059BDCC  90 06 00 38 */	stw r0, 0x38(r6)
/* 8059BDD0  80 A4 00 60 */	lwz r5, 0x60(r4)
/* 8059BDD4  80 04 00 64 */	lwz r0, 0x64(r4)
/* 8059BDD8  90 A6 00 3C */	stw r5, 0x3c(r6)
/* 8059BDDC  90 06 00 40 */	stw r0, 0x40(r6)
/* 8059BDE0  80 04 00 68 */	lwz r0, 0x68(r4)
/* 8059BDE4  90 06 00 44 */	stw r0, 0x44(r6)
/* 8059BDE8  38 00 00 01 */	li r0, 1
/* 8059BDEC  98 07 00 00 */	stb r0, 0(r7)
lbl_8059BDF0:
/* 8059BDF0  88 03 05 EF */	lbz r0, 0x5ef(r3)
/* 8059BDF4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8059BDF8  39 84 00 6C */	addi r12, r4, 0x6c
/* 8059BDFC  7D 8C 02 14 */	add r12, r12, r0
/* 8059BE00  4B DC 62 85 */	bl __ptmf_scall
/* 8059BE04  60 00 00 00 */	nop 
/* 8059BE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059BE0C  7C 08 03 A6 */	mtlr r0
/* 8059BE10  38 21 00 10 */	addi r1, r1, 0x10
/* 8059BE14  4E 80 00 20 */	blr 
