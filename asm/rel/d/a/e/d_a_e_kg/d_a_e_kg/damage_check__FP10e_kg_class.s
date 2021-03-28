lbl_806F8224:
/* 806F8224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F8228  7C 08 02 A6 */	mflr r0
/* 806F822C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F8230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F8234  7C 7F 1B 78 */	mr r31, r3
/* 806F8238  A8 03 06 9C */	lha r0, 0x69c(r3)
/* 806F823C  2C 00 00 00 */	cmpwi r0, 0
/* 806F8240  40 82 00 D4 */	bne lbl_806F8314
/* 806F8244  38 7F 08 D8 */	addi r3, r31, 0x8d8
/* 806F8248  4B 98 B5 E8 */	b Move__10dCcD_GSttsFv
/* 806F824C  38 7F 08 F8 */	addi r3, r31, 0x8f8
/* 806F8250  4B 98 C2 10 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806F8254  28 03 00 00 */	cmplwi r3, 0
/* 806F8258  41 82 00 A8 */	beq lbl_806F8300
/* 806F825C  38 7F 08 F8 */	addi r3, r31, 0x8f8
/* 806F8260  4B 98 C2 98 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806F8264  90 7F 0A 30 */	stw r3, 0xa30(r31)
/* 806F8268  7F E3 FB 78 */	mr r3, r31
/* 806F826C  38 9F 0A 30 */	addi r4, r31, 0xa30
/* 806F8270  4B 98 F9 94 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806F8274  80 7F 0A 30 */	lwz r3, 0xa30(r31)
/* 806F8278  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806F827C  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 806F8280  41 82 00 10 */	beq lbl_806F8290
/* 806F8284  38 00 00 14 */	li r0, 0x14
/* 806F8288  B0 1F 06 9C */	sth r0, 0x69c(r31)
/* 806F828C  48 00 00 0C */	b lbl_806F8298
lbl_806F8290:
/* 806F8290  38 00 00 0A */	li r0, 0xa
/* 806F8294  B0 1F 06 9C */	sth r0, 0x69c(r31)
lbl_806F8298:
/* 806F8298  80 7F 0A 30 */	lwz r3, 0xa30(r31)
/* 806F829C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806F82A0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 806F82A4  41 82 00 0C */	beq lbl_806F82B0
/* 806F82A8  38 00 00 00 */	li r0, 0
/* 806F82AC  B0 1F 05 62 */	sth r0, 0x562(r31)
lbl_806F82B0:
/* 806F82B0  88 1F 0A 50 */	lbz r0, 0xa50(r31)
/* 806F82B4  28 00 00 10 */	cmplwi r0, 0x10
/* 806F82B8  40 82 00 10 */	bne lbl_806F82C8
/* 806F82BC  38 00 00 03 */	li r0, 3
/* 806F82C0  B0 1F 06 76 */	sth r0, 0x676(r31)
/* 806F82C4  48 00 00 2C */	b lbl_806F82F0
lbl_806F82C8:
/* 806F82C8  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 806F82CC  2C 00 00 00 */	cmpwi r0, 0
/* 806F82D0  41 81 00 10 */	bgt lbl_806F82E0
/* 806F82D4  38 00 00 0A */	li r0, 0xa
/* 806F82D8  B0 1F 06 76 */	sth r0, 0x676(r31)
/* 806F82DC  48 00 00 0C */	b lbl_806F82E8
lbl_806F82E0:
/* 806F82E0  38 00 00 09 */	li r0, 9
/* 806F82E4  B0 1F 06 76 */	sth r0, 0x676(r31)
lbl_806F82E8:
/* 806F82E8  38 00 00 0F */	li r0, 0xf
/* 806F82EC  B0 1F 0A 54 */	sth r0, 0xa54(r31)
lbl_806F82F0:
/* 806F82F0  A8 1F 0A 3E */	lha r0, 0xa3e(r31)
/* 806F82F4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 806F82F8  38 00 00 00 */	li r0, 0
/* 806F82FC  B0 1F 06 78 */	sth r0, 0x678(r31)
lbl_806F8300:
/* 806F8300  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 806F8304  2C 00 00 01 */	cmpwi r0, 1
/* 806F8308  41 81 00 0C */	bgt lbl_806F8314
/* 806F830C  38 00 00 03 */	li r0, 3
/* 806F8310  98 1F 09 B2 */	stb r0, 0x9b2(r31)
lbl_806F8314:
/* 806F8314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F8318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F831C  7C 08 03 A6 */	mtlr r0
/* 806F8320  38 21 00 10 */	addi r1, r1, 0x10
/* 806F8324  4E 80 00 20 */	blr 
