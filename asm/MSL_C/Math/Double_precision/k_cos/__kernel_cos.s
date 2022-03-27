lbl_8036AAA8:
/* 8036AAA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036AAAC  3C 00 3E 40 */	lis r0, 0x3e40
/* 8036AAB0  D8 21 00 08 */	stfd f1, 8(r1)
/* 8036AAB4  80 61 00 08 */	lwz r3, 8(r1)
/* 8036AAB8  54 64 00 7E */	clrlwi r4, r3, 1
/* 8036AABC  7C 04 00 00 */	cmpw r4, r0
/* 8036AAC0  40 80 00 20 */	bge lbl_8036AAE0
/* 8036AAC4  FC 00 08 1E */	fctiwz f0, f1
/* 8036AAC8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8036AACC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8036AAD0  2C 00 00 00 */	cmpwi r0, 0
/* 8036AAD4  40 82 00 0C */	bne lbl_8036AAE0
/* 8036AAD8  C8 22 CF C0 */	lfd f1, lit_65(r2)
/* 8036AADC  48 00 00 B8 */	b lbl_8036AB94
lbl_8036AAE0:
/* 8036AAE0  C8 C1 00 08 */	lfd f6, 8(r1)
/* 8036AAE4  3C 60 3F D3 */	lis r3, 0x3FD3 /* 0x3FD33333@ha */
/* 8036AAE8  38 03 33 33 */	addi r0, r3, 0x3333 /* 0x3FD33333@l */
/* 8036AAEC  C8 A2 CF F0 */	lfd f5, lit_71(r2)
/* 8036AAF0  FC E6 01 B2 */	fmul f7, f6, f6
/* 8036AAF4  C8 02 CF E8 */	lfd f0, lit_70(r2)
/* 8036AAF8  C8 82 CF E0 */	lfd f4, lit_69(r2)
/* 8036AAFC  7C 04 00 00 */	cmpw r4, r0
/* 8036AB00  C8 62 CF D8 */	lfd f3, lit_68(r2)
/* 8036AB04  C8 22 CF D0 */	lfd f1, lit_67(r2)
/* 8036AB08  FC A5 01 FA */	fmadd f5, f5, f7, f0
/* 8036AB0C  C8 02 CF C8 */	lfd f0, lit_66(r2)
/* 8036AB10  FC 87 21 7A */	fmadd f4, f7, f5, f4
/* 8036AB14  FC 67 19 3A */	fmadd f3, f7, f4, f3
/* 8036AB18  FC 27 08 FA */	fmadd f1, f7, f3, f1
/* 8036AB1C  FC 07 00 7A */	fmadd f0, f7, f1, f0
/* 8036AB20  FC 87 00 32 */	fmul f4, f7, f0
/* 8036AB24  40 80 00 20 */	bge lbl_8036AB44
/* 8036AB28  FC 06 00 B2 */	fmul f0, f6, f2
/* 8036AB2C  C8 22 CF F8 */	lfd f1, lit_72(r2)
/* 8036AB30  C8 42 CF C0 */	lfd f2, lit_65(r2)
/* 8036AB34  FC 07 01 38 */	fmsub f0, f7, f4, f0
/* 8036AB38  FC 01 01 F8 */	fmsub f0, f1, f7, f0
/* 8036AB3C  FC 22 00 28 */	fsub f1, f2, f0
/* 8036AB40  48 00 00 54 */	b lbl_8036AB94
lbl_8036AB44:
/* 8036AB44  3C 00 3F E9 */	lis r0, 0x3fe9
/* 8036AB48  7C 04 00 00 */	cmpw r4, r0
/* 8036AB4C  40 81 00 10 */	ble lbl_8036AB5C
/* 8036AB50  C8 02 D0 00 */	lfd f0, lit_73(r2)
/* 8036AB54  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8036AB58  48 00 00 14 */	b lbl_8036AB6C
lbl_8036AB5C:
/* 8036AB5C  3C 64 FF E0 */	addis r3, r4, 0xffe0
/* 8036AB60  38 00 00 00 */	li r0, 0
/* 8036AB64  90 61 00 10 */	stw r3, 0x10(r1)
/* 8036AB68  90 01 00 14 */	stw r0, 0x14(r1)
lbl_8036AB6C:
/* 8036AB6C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8036AB70  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 8036AB74  FC 00 00 B2 */	fmul f0, f0, f2
/* 8036AB78  C8 22 CF F8 */	lfd f1, lit_72(r2)
/* 8036AB7C  C8 42 CF C0 */	lfd f2, lit_65(r2)
/* 8036AB80  FC 21 19 F8 */	fmsub f1, f1, f7, f3
/* 8036AB84  FC 07 01 38 */	fmsub f0, f7, f4, f0
/* 8036AB88  FC 42 18 28 */	fsub f2, f2, f3
/* 8036AB8C  FC 01 00 28 */	fsub f0, f1, f0
/* 8036AB90  FC 22 00 28 */	fsub f1, f2, f0
lbl_8036AB94:
/* 8036AB94  38 21 00 20 */	addi r1, r1, 0x20
/* 8036AB98  4E 80 00 20 */	blr 
