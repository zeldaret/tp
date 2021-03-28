lbl_8087730C:
/* 8087730C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80877310  7C 08 02 A6 */	mflr r0
/* 80877314  90 01 00 34 */	stw r0, 0x34(r1)
/* 80877318  39 61 00 30 */	addi r11, r1, 0x30
/* 8087731C  4B AE AE A8 */	b _savegpr_23
/* 80877320  7C 77 1B 78 */	mr r23, r3
/* 80877324  7C 9F 23 78 */	mr r31, r4
/* 80877328  3C 60 80 94 */	lis r3, daMP_Initialized@ha
/* 8087732C  80 03 48 88 */	lwz r0, daMP_Initialized@l(r3)
/* 80877330  2C 00 00 00 */	cmpwi r0, 0
/* 80877334  40 82 00 20 */	bne lbl_80877354
/* 80877338  3C 60 80 88 */	lis r3, stringBase0@ha
/* 8087733C  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 80877340  38 63 00 5E */	addi r3, r3, 0x5e
/* 80877344  4C C6 31 82 */	crclr 6
/* 80877348  4B 78 F7 74 */	b OSReport
/* 8087734C  38 60 00 00 */	li r3, 0
/* 80877350  48 00 03 84 */	b lbl_808776D4
lbl_80877354:
/* 80877354  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80877358  3B C3 9B D0 */	addi r30, r3, daMP_ActivePlayer@l
/* 8087735C  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 80877360  2C 00 00 00 */	cmpwi r0, 0
/* 80877364  41 82 00 20 */	beq lbl_80877384
/* 80877368  3C 60 80 88 */	lis r3, stringBase0@ha
/* 8087736C  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 80877370  38 63 00 9E */	addi r3, r3, 0x9e
/* 80877374  4C C6 31 82 */	crclr 6
/* 80877378  4B 78 F7 44 */	b OSReport
/* 8087737C  38 60 00 00 */	li r3, 0
/* 80877380  48 00 03 54 */	b lbl_808776D4
lbl_80877384:
/* 80877384  3B BE 00 80 */	addi r29, r30, 0x80
/* 80877388  7F A3 EB 78 */	mr r3, r29
/* 8087738C  38 80 00 00 */	li r4, 0
/* 80877390  38 A0 00 0C */	li r5, 0xc
/* 80877394  4B 78 C0 C4 */	b memset
/* 80877398  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 8087739C  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 808773A0  3B 83 00 8C */	addi r28, r3, 0x8c
/* 808773A4  7F 83 E3 78 */	mr r3, r28
/* 808773A8  38 80 00 00 */	li r4, 0
/* 808773AC  38 A0 00 10 */	li r5, 0x10
/* 808773B0  4B 78 C0 A8 */	b memset
/* 808773B4  7E E3 BB 78 */	mr r3, r23
/* 808773B8  3C 80 80 88 */	lis r4, daMP_ActivePlayer@ha
/* 808773BC  38 84 9B D0 */	addi r4, r4, daMP_ActivePlayer@l
/* 808773C0  4B AD 14 D0 */	b DVDOpen
/* 808773C4  2C 03 00 00 */	cmpwi r3, 0
/* 808773C8  40 82 00 24 */	bne lbl_808773EC
/* 808773CC  3C 60 80 88 */	lis r3, stringBase0@ha
/* 808773D0  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 808773D4  38 63 00 D4 */	addi r3, r3, 0xd4
/* 808773D8  7E E4 BB 78 */	mr r4, r23
/* 808773DC  4C C6 31 82 */	crclr 6
/* 808773E0  4B 78 F6 DC */	b OSReport
/* 808773E4  38 60 00 00 */	li r3, 0
/* 808773E8  48 00 02 EC */	b lbl_808776D4
lbl_808773EC:
/* 808773EC  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 808773F0  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 808773F4  3C 80 80 94 */	lis r4, daMP_WorkBuffer@ha
/* 808773F8  38 84 48 A0 */	addi r4, r4, daMP_WorkBuffer@l
/* 808773FC  38 A0 00 40 */	li r5, 0x40
/* 80877400  38 C0 00 00 */	li r6, 0
/* 80877404  38 E0 00 02 */	li r7, 2
/* 80877408  4B AD 1A 3C */	b DVDReadPrio
/* 8087740C  2C 03 00 00 */	cmpwi r3, 0
/* 80877410  40 80 00 2C */	bge lbl_8087743C
/* 80877414  3C 60 80 88 */	lis r3, stringBase0@ha
/* 80877418  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 8087741C  38 63 00 E4 */	addi r3, r3, 0xe4
/* 80877420  4C C6 31 82 */	crclr 6
/* 80877424  4B 78 F6 98 */	b OSReport
/* 80877428  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 8087742C  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 80877430  4B AD 15 28 */	b DVDClose
/* 80877434  38 60 00 00 */	li r3, 0
/* 80877438  48 00 02 9C */	b lbl_808776D4
lbl_8087743C:
/* 8087743C  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80877440  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 80877444  3A E3 00 3C */	addi r23, r3, 0x3c
/* 80877448  7E E3 BB 78 */	mr r3, r23
/* 8087744C  3C 80 80 94 */	lis r4, daMP_WorkBuffer@ha
/* 80877450  38 84 48 A0 */	addi r4, r4, daMP_WorkBuffer@l
/* 80877454  38 A0 00 30 */	li r5, 0x30
/* 80877458  4B 78 C0 E8 */	b memcpy
/* 8087745C  7E E3 BB 78 */	mr r3, r23
/* 80877460  3C 80 80 88 */	lis r4, stringBase0@ha
/* 80877464  38 84 91 1C */	addi r4, r4, stringBase0@l
/* 80877468  38 84 01 0C */	addi r4, r4, 0x10c
/* 8087746C  4B AF 15 28 */	b strcmp
/* 80877470  2C 03 00 00 */	cmpwi r3, 0
/* 80877474  41 82 00 2C */	beq lbl_808774A0
/* 80877478  3C 60 80 88 */	lis r3, stringBase0@ha
/* 8087747C  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 80877480  38 63 01 10 */	addi r3, r3, 0x110
/* 80877484  4C C6 31 82 */	crclr 6
/* 80877488  4B 78 F6 34 */	b OSReport
/* 8087748C  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80877490  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 80877494  4B AD 14 C4 */	b DVDClose
/* 80877498  38 60 00 00 */	li r3, 0
/* 8087749C  48 00 02 38 */	b lbl_808776D4
lbl_808774A0:
/* 808774A0  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 808774A4  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 808774A8  80 83 00 40 */	lwz r4, 0x40(r3)
/* 808774AC  3C 04 FF FF */	addis r0, r4, 0xffff
/* 808774B0  28 00 10 00 */	cmplwi r0, 0x1000
/* 808774B4  41 82 00 2C */	beq lbl_808774E0
/* 808774B8  3C 60 80 88 */	lis r3, stringBase0@ha
/* 808774BC  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 808774C0  38 63 01 2C */	addi r3, r3, 0x12c
/* 808774C4  4C C6 31 82 */	crclr 6
/* 808774C8  4B 78 F5 F4 */	b OSReport
/* 808774CC  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 808774D0  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 808774D4  4B AD 14 84 */	b DVDClose
/* 808774D8  38 60 00 00 */	li r3, 0
/* 808774DC  48 00 01 F8 */	b lbl_808776D4
lbl_808774E0:
/* 808774E0  83 03 00 5C */	lwz r24, 0x5c(r3)
/* 808774E4  3C 80 80 94 */	lis r4, daMP_WorkBuffer@ha
/* 808774E8  38 84 48 A0 */	addi r4, r4, daMP_WorkBuffer@l
/* 808774EC  38 A0 00 20 */	li r5, 0x20
/* 808774F0  7F 06 C3 78 */	mr r6, r24
/* 808774F4  38 E0 00 02 */	li r7, 2
/* 808774F8  4B AD 19 4C */	b DVDReadPrio
/* 808774FC  2C 03 00 00 */	cmpwi r3, 0
/* 80877500  40 80 00 2C */	bge lbl_8087752C
/* 80877504  3C 60 80 88 */	lis r3, stringBase0@ha
/* 80877508  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 8087750C  38 63 01 3E */	addi r3, r3, 0x13e
/* 80877510  4C C6 31 82 */	crclr 6
/* 80877514  4B 78 F5 A8 */	b OSReport
/* 80877518  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 8087751C  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 80877520  4B AD 14 38 */	b DVDClose
/* 80877524  38 60 00 00 */	li r3, 0
/* 80877528  48 00 01 AC */	b lbl_808776D4
lbl_8087752C:
/* 8087752C  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80877530  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 80877534  3B 23 00 6C */	addi r25, r3, 0x6c
/* 80877538  7F 23 CB 78 */	mr r3, r25
/* 8087753C  3C 80 80 94 */	lis r4, daMP_WorkBuffer@ha
/* 80877540  38 84 48 A0 */	addi r4, r4, daMP_WorkBuffer@l
/* 80877544  38 A0 00 14 */	li r5, 0x14
/* 80877548  4B 78 BF F8 */	b memcpy
/* 8087754C  38 00 00 00 */	li r0, 0
/* 80877550  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80877554  3B 63 9B D0 */	addi r27, r3, daMP_ActivePlayer@l
/* 80877558  98 1B 00 A7 */	stb r0, 0xa7(r27)
/* 8087755C  3A E0 00 00 */	li r23, 0
/* 80877560  7F 7A DB 78 */	mr r26, r27
/* 80877564  3B 18 00 14 */	addi r24, r24, 0x14
/* 80877568  48 00 01 24 */	b lbl_8087768C
lbl_8087756C:
/* 8087756C  88 1A 00 70 */	lbz r0, 0x70(r26)
/* 80877570  2C 00 00 01 */	cmpwi r0, 1
/* 80877574  41 82 00 80 */	beq lbl_808775F4
/* 80877578  40 80 00 F0 */	bge lbl_80877668
/* 8087757C  2C 00 00 00 */	cmpwi r0, 0
/* 80877580  40 80 00 08 */	bge lbl_80877588
/* 80877584  48 00 00 E4 */	b lbl_80877668
lbl_80877588:
/* 80877588  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 8087758C  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 80877590  3C 80 80 94 */	lis r4, daMP_WorkBuffer@ha
/* 80877594  38 84 48 A0 */	addi r4, r4, daMP_WorkBuffer@l
/* 80877598  38 A0 00 20 */	li r5, 0x20
/* 8087759C  7F 06 C3 78 */	mr r6, r24
/* 808775A0  38 E0 00 02 */	li r7, 2
/* 808775A4  4B AD 18 A0 */	b DVDReadPrio
/* 808775A8  2C 03 00 00 */	cmpwi r3, 0
/* 808775AC  40 80 00 2C */	bge lbl_808775D8
/* 808775B0  3C 60 80 88 */	lis r3, stringBase0@ha
/* 808775B4  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 808775B8  38 63 01 7A */	addi r3, r3, 0x17a
/* 808775BC  4C C6 31 82 */	crclr 6
/* 808775C0  4B 78 F4 FC */	b OSReport
/* 808775C4  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 808775C8  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 808775CC  4B AD 13 8C */	b DVDClose
/* 808775D0  38 60 00 00 */	li r3, 0
/* 808775D4  48 00 01 00 */	b lbl_808776D4
lbl_808775D8:
/* 808775D8  7F A3 EB 78 */	mr r3, r29
/* 808775DC  3C 80 80 94 */	lis r4, daMP_WorkBuffer@ha
/* 808775E0  38 84 48 A0 */	addi r4, r4, daMP_WorkBuffer@l
/* 808775E4  38 A0 00 0C */	li r5, 0xc
/* 808775E8  4B 78 BF 58 */	b memcpy
/* 808775EC  3B 18 00 0C */	addi r24, r24, 0xc
/* 808775F0  48 00 00 94 */	b lbl_80877684
lbl_808775F4:
/* 808775F4  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 808775F8  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 808775FC  3C 80 80 94 */	lis r4, daMP_WorkBuffer@ha
/* 80877600  38 84 48 A0 */	addi r4, r4, daMP_WorkBuffer@l
/* 80877604  38 A0 00 20 */	li r5, 0x20
/* 80877608  7F 06 C3 78 */	mr r6, r24
/* 8087760C  38 E0 00 02 */	li r7, 2
/* 80877610  4B AD 18 34 */	b DVDReadPrio
/* 80877614  2C 03 00 00 */	cmpwi r3, 0
/* 80877618  40 80 00 2C */	bge lbl_80877644
/* 8087761C  3C 60 80 88 */	lis r3, stringBase0@ha
/* 80877620  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 80877624  38 63 01 7A */	addi r3, r3, 0x17a
/* 80877628  4C C6 31 82 */	crclr 6
/* 8087762C  4B 78 F4 90 */	b OSReport
/* 80877630  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80877634  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 80877638  4B AD 13 20 */	b DVDClose
/* 8087763C  38 60 00 00 */	li r3, 0
/* 80877640  48 00 00 94 */	b lbl_808776D4
lbl_80877644:
/* 80877644  7F 83 E3 78 */	mr r3, r28
/* 80877648  3C 80 80 94 */	lis r4, daMP_WorkBuffer@ha
/* 8087764C  38 84 48 A0 */	addi r4, r4, daMP_WorkBuffer@l
/* 80877650  38 A0 00 10 */	li r5, 0x10
/* 80877654  4B 78 BE EC */	b memcpy
/* 80877658  38 00 00 01 */	li r0, 1
/* 8087765C  98 1B 00 A7 */	stb r0, 0xa7(r27)
/* 80877660  3B 18 00 10 */	addi r24, r24, 0x10
/* 80877664  48 00 00 20 */	b lbl_80877684
lbl_80877668:
/* 80877668  3C 60 80 88 */	lis r3, stringBase0@ha
/* 8087766C  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 80877670  38 63 01 AC */	addi r3, r3, 0x1ac
/* 80877674  4C C6 31 82 */	crclr 6
/* 80877678  4B 78 F4 44 */	b OSReport
/* 8087767C  38 60 00 00 */	li r3, 0
/* 80877680  48 00 00 54 */	b lbl_808776D4
lbl_80877684:
/* 80877684  3B 5A 00 01 */	addi r26, r26, 1
/* 80877688  3A F7 00 01 */	addi r23, r23, 1
lbl_8087768C:
/* 8087768C  80 19 00 00 */	lwz r0, 0(r25)
/* 80877690  7C 17 00 40 */	cmplw r23, r0
/* 80877694  41 80 FE D8 */	blt lbl_8087756C
/* 80877698  38 A0 00 00 */	li r5, 0
/* 8087769C  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 808776A0  38 83 9B D0 */	addi r4, r3, daMP_ActivePlayer@l
/* 808776A4  98 A4 00 A5 */	stb r5, 0xa5(r4)
/* 808776A8  98 A4 00 A4 */	stb r5, 0xa4(r4)
/* 808776AC  98 A4 00 A6 */	stb r5, 0xa6(r4)
/* 808776B0  93 E4 00 B0 */	stw r31, 0xb0(r4)
/* 808776B4  38 00 00 01 */	li r0, 1
/* 808776B8  90 1E 00 A0 */	stw r0, 0xa0(r30)
/* 808776BC  3C 60 80 88 */	lis r3, lit_4983@ha
/* 808776C0  C0 03 91 18 */	lfs f0, lit_4983@l(r3)
/* 808776C4  D0 04 00 DC */	stfs f0, 0xdc(r4)
/* 808776C8  D0 04 00 E0 */	stfs f0, 0xe0(r4)
/* 808776CC  90 A4 00 E8 */	stw r5, 0xe8(r4)
/* 808776D0  38 60 00 01 */	li r3, 1
lbl_808776D4:
/* 808776D4  39 61 00 30 */	addi r11, r1, 0x30
/* 808776D8  4B AE AB 38 */	b _restgpr_23
/* 808776DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 808776E0  7C 08 03 A6 */	mtlr r0
/* 808776E4  38 21 00 30 */	addi r1, r1, 0x30
/* 808776E8  4E 80 00 20 */	blr 
