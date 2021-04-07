lbl_809EC424:
/* 809EC424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EC428  7C 08 02 A6 */	mflr r0
/* 809EC42C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EC430  A8 03 09 DE */	lha r0, 0x9de(r3)
/* 809EC434  2C 00 00 01 */	cmpwi r0, 1
/* 809EC438  41 82 00 40 */	beq lbl_809EC478
/* 809EC43C  40 80 00 10 */	bge lbl_809EC44C
/* 809EC440  2C 00 00 00 */	cmpwi r0, 0
/* 809EC444  40 80 00 14 */	bge lbl_809EC458
/* 809EC448  48 00 00 50 */	b lbl_809EC498
lbl_809EC44C:
/* 809EC44C  2C 00 00 03 */	cmpwi r0, 3
/* 809EC450  40 80 00 48 */	bge lbl_809EC498
/* 809EC454  48 00 00 60 */	b lbl_809EC4B4
lbl_809EC458:
/* 809EC458  38 80 00 04 */	li r4, 4
/* 809EC45C  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809EC460  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809EC464  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809EC468  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EC46C  7D 89 03 A6 */	mtctr r12
/* 809EC470  4E 80 04 21 */	bctrl 
/* 809EC474  48 00 00 40 */	b lbl_809EC4B4
lbl_809EC478:
/* 809EC478  38 80 00 09 */	li r4, 9
/* 809EC47C  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809EC480  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809EC484  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809EC488  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EC48C  7D 89 03 A6 */	mtctr r12
/* 809EC490  4E 80 04 21 */	bctrl 
/* 809EC494  48 00 00 20 */	b lbl_809EC4B4
lbl_809EC498:
/* 809EC498  38 80 00 0A */	li r4, 0xa
/* 809EC49C  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809EC4A0  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809EC4A4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809EC4A8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EC4AC  7D 89 03 A6 */	mtctr r12
/* 809EC4B0  4E 80 04 21 */	bctrl 
lbl_809EC4B4:
/* 809EC4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EC4B8  7C 08 03 A6 */	mtlr r0
/* 809EC4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 809EC4C0  4E 80 00 20 */	blr 
