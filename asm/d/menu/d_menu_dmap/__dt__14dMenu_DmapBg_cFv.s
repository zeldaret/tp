lbl_801BA0BC:
/* 801BA0BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BA0C0  7C 08 02 A6 */	mflr r0
/* 801BA0C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BA0C8  39 61 00 20 */	addi r11, r1, 0x20
/* 801BA0CC  48 1A 81 05 */	bl _savegpr_26
/* 801BA0D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801BA0D4  7C 9E 23 78 */	mr r30, r4
/* 801BA0D8  41 82 05 18 */	beq lbl_801BA5F0
/* 801BA0DC  3C 60 80 3C */	lis r3, __vt__14dMenu_DmapBg_c@ha /* 0x803BCB38@ha */
/* 801BA0E0  38 63 CB 38 */	addi r3, r3, __vt__14dMenu_DmapBg_c@l /* 0x803BCB38@l */
/* 801BA0E4  90 7F 00 00 */	stw r3, 0(r31)
/* 801BA0E8  38 03 00 0C */	addi r0, r3, 0xc
/* 801BA0EC  90 1F 00 04 */	stw r0, 4(r31)
/* 801BA0F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801BA0F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801BA0F8  80 63 5C C0 */	lwz r3, 0x5cc0(r3)
/* 801BA0FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA100  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801BA104  7D 89 03 A6 */	mtctr r12
/* 801BA108  4E 80 04 21 */	bctrl 
/* 801BA10C  80 7F 0C C8 */	lwz r3, 0xcc8(r31)
/* 801BA110  38 80 00 01 */	li r4, 1
/* 801BA114  48 08 FC 15 */	bl __dt__12dMsgString_cFv
/* 801BA118  80 7F 0D 30 */	lwz r3, 0xd30(r31)
/* 801BA11C  28 03 00 00 */	cmplwi r3, 0
/* 801BA120  41 82 00 24 */	beq lbl_801BA144
/* 801BA124  41 82 00 18 */	beq lbl_801BA13C
/* 801BA128  38 80 00 01 */	li r4, 1
/* 801BA12C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA130  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801BA134  7D 89 03 A6 */	mtctr r12
/* 801BA138  4E 80 04 21 */	bctrl 
lbl_801BA13C:
/* 801BA13C  38 00 00 00 */	li r0, 0
/* 801BA140  90 1F 0D 30 */	stw r0, 0xd30(r31)
lbl_801BA144:
/* 801BA144  80 7F 0C A4 */	lwz r3, 0xca4(r31)
/* 801BA148  28 03 00 00 */	cmplwi r3, 0
/* 801BA14C  41 82 00 18 */	beq lbl_801BA164
/* 801BA150  38 80 00 01 */	li r4, 1
/* 801BA154  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA158  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA15C  7D 89 03 A6 */	mtctr r12
/* 801BA160  4E 80 04 21 */	bctrl 
lbl_801BA164:
/* 801BA164  38 00 00 00 */	li r0, 0
/* 801BA168  90 1F 0C A4 */	stw r0, 0xca4(r31)
/* 801BA16C  80 7F 0C BC */	lwz r3, 0xcbc(r31)
/* 801BA170  28 03 00 00 */	cmplwi r3, 0
/* 801BA174  41 82 00 18 */	beq lbl_801BA18C
/* 801BA178  38 80 00 01 */	li r4, 1
/* 801BA17C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA180  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA184  7D 89 03 A6 */	mtctr r12
/* 801BA188  4E 80 04 21 */	bctrl 
lbl_801BA18C:
/* 801BA18C  38 00 00 00 */	li r0, 0
/* 801BA190  90 1F 0C BC */	stw r0, 0xcbc(r31)
/* 801BA194  80 7F 0C CC */	lwz r3, 0xccc(r31)
/* 801BA198  28 03 00 00 */	cmplwi r3, 0
/* 801BA19C  41 82 00 18 */	beq lbl_801BA1B4
/* 801BA1A0  38 80 00 01 */	li r4, 1
/* 801BA1A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA1A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA1AC  7D 89 03 A6 */	mtctr r12
/* 801BA1B0  4E 80 04 21 */	bctrl 
lbl_801BA1B4:
/* 801BA1B4  38 00 00 00 */	li r0, 0
/* 801BA1B8  90 1F 0C CC */	stw r0, 0xccc(r31)
/* 801BA1BC  80 7F 0C E0 */	lwz r3, 0xce0(r31)
/* 801BA1C0  28 03 00 00 */	cmplwi r3, 0
/* 801BA1C4  41 82 00 18 */	beq lbl_801BA1DC
/* 801BA1C8  38 80 00 01 */	li r4, 1
/* 801BA1CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA1D0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA1D4  7D 89 03 A6 */	mtctr r12
/* 801BA1D8  4E 80 04 21 */	bctrl 
lbl_801BA1DC:
/* 801BA1DC  38 00 00 00 */	li r0, 0
/* 801BA1E0  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 801BA1E4  80 7F 0C C0 */	lwz r3, 0xcc0(r31)
/* 801BA1E8  28 03 00 00 */	cmplwi r3, 0
/* 801BA1EC  41 82 00 18 */	beq lbl_801BA204
/* 801BA1F0  38 80 00 01 */	li r4, 1
/* 801BA1F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA1F8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801BA1FC  7D 89 03 A6 */	mtctr r12
/* 801BA200  4E 80 04 21 */	bctrl 
lbl_801BA204:
/* 801BA204  3B 80 00 00 */	li r28, 0
/* 801BA208  93 9F 0C C0 */	stw r28, 0xcc0(r31)
/* 801BA20C  3B 60 00 00 */	li r27, 0
lbl_801BA210:
/* 801BA210  7F BF E2 14 */	add r29, r31, r28
/* 801BA214  80 7D 0C A8 */	lwz r3, 0xca8(r29)
/* 801BA218  28 03 00 00 */	cmplwi r3, 0
/* 801BA21C  41 82 00 18 */	beq lbl_801BA234
/* 801BA220  38 80 00 01 */	li r4, 1
/* 801BA224  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA228  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA22C  7D 89 03 A6 */	mtctr r12
/* 801BA230  4E 80 04 21 */	bctrl 
lbl_801BA234:
/* 801BA234  38 00 00 00 */	li r0, 0
/* 801BA238  90 1D 0C A8 */	stw r0, 0xca8(r29)
/* 801BA23C  80 7D 0D 00 */	lwz r3, 0xd00(r29)
/* 801BA240  28 03 00 00 */	cmplwi r3, 0
/* 801BA244  41 82 00 18 */	beq lbl_801BA25C
/* 801BA248  38 80 00 01 */	li r4, 1
/* 801BA24C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA250  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA254  7D 89 03 A6 */	mtctr r12
/* 801BA258  4E 80 04 21 */	bctrl 
lbl_801BA25C:
/* 801BA25C  38 00 00 00 */	li r0, 0
/* 801BA260  90 1D 0D 00 */	stw r0, 0xd00(r29)
/* 801BA264  80 7D 0C D0 */	lwz r3, 0xcd0(r29)
/* 801BA268  28 03 00 00 */	cmplwi r3, 0
/* 801BA26C  41 82 00 18 */	beq lbl_801BA284
/* 801BA270  38 80 00 01 */	li r4, 1
/* 801BA274  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA278  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA27C  7D 89 03 A6 */	mtctr r12
/* 801BA280  4E 80 04 21 */	bctrl 
lbl_801BA284:
/* 801BA284  38 00 00 00 */	li r0, 0
/* 801BA288  90 1D 0C D0 */	stw r0, 0xcd0(r29)
/* 801BA28C  3B 7B 00 01 */	addi r27, r27, 1
/* 801BA290  2C 1B 00 02 */	cmpwi r27, 2
/* 801BA294  3B 9C 00 04 */	addi r28, r28, 4
/* 801BA298  41 80 FF 78 */	blt lbl_801BA210
/* 801BA29C  80 7F 0C E4 */	lwz r3, 0xce4(r31)
/* 801BA2A0  28 03 00 00 */	cmplwi r3, 0
/* 801BA2A4  41 82 00 24 */	beq lbl_801BA2C8
/* 801BA2A8  41 82 00 18 */	beq lbl_801BA2C0
/* 801BA2AC  38 80 00 01 */	li r4, 1
/* 801BA2B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA2B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA2B8  7D 89 03 A6 */	mtctr r12
/* 801BA2BC  4E 80 04 21 */	bctrl 
lbl_801BA2C0:
/* 801BA2C0  38 00 00 00 */	li r0, 0
/* 801BA2C4  90 1F 0C E4 */	stw r0, 0xce4(r31)
lbl_801BA2C8:
/* 801BA2C8  80 7F 0D 28 */	lwz r3, 0xd28(r31)
/* 801BA2CC  28 03 00 00 */	cmplwi r3, 0
/* 801BA2D0  41 82 00 18 */	beq lbl_801BA2E8
/* 801BA2D4  38 80 00 01 */	li r4, 1
/* 801BA2D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA2DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA2E0  7D 89 03 A6 */	mtctr r12
/* 801BA2E4  4E 80 04 21 */	bctrl 
lbl_801BA2E8:
/* 801BA2E8  3B 40 00 00 */	li r26, 0
/* 801BA2EC  3B A0 00 00 */	li r29, 0
/* 801BA2F0  3B 80 00 00 */	li r28, 0
lbl_801BA2F4:
/* 801BA2F4  3B 7D 0D 00 */	addi r27, r29, 0xd00
/* 801BA2F8  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801BA2FC  28 03 00 00 */	cmplwi r3, 0
/* 801BA300  41 82 00 18 */	beq lbl_801BA318
/* 801BA304  38 80 00 01 */	li r4, 1
/* 801BA308  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA30C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA310  7D 89 03 A6 */	mtctr r12
/* 801BA314  4E 80 04 21 */	bctrl 
lbl_801BA318:
/* 801BA318  7F 9F D9 2E */	stwx r28, r31, r27
/* 801BA31C  3B 5A 00 01 */	addi r26, r26, 1
/* 801BA320  2C 1A 00 02 */	cmpwi r26, 2
/* 801BA324  3B BD 00 04 */	addi r29, r29, 4
/* 801BA328  41 80 FF CC */	blt lbl_801BA2F4
/* 801BA32C  80 7F 0C F4 */	lwz r3, 0xcf4(r31)
/* 801BA330  28 03 00 00 */	cmplwi r3, 0
/* 801BA334  41 82 00 24 */	beq lbl_801BA358
/* 801BA338  41 82 00 18 */	beq lbl_801BA350
/* 801BA33C  38 80 00 01 */	li r4, 1
/* 801BA340  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA344  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA348  7D 89 03 A6 */	mtctr r12
/* 801BA34C  4E 80 04 21 */	bctrl 
lbl_801BA350:
/* 801BA350  38 00 00 00 */	li r0, 0
/* 801BA354  90 1F 0C F4 */	stw r0, 0xcf4(r31)
lbl_801BA358:
/* 801BA358  80 7F 0C F8 */	lwz r3, 0xcf8(r31)
/* 801BA35C  28 03 00 00 */	cmplwi r3, 0
/* 801BA360  41 82 00 24 */	beq lbl_801BA384
/* 801BA364  41 82 00 18 */	beq lbl_801BA37C
/* 801BA368  38 80 00 01 */	li r4, 1
/* 801BA36C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA370  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA374  7D 89 03 A6 */	mtctr r12
/* 801BA378  4E 80 04 21 */	bctrl 
lbl_801BA37C:
/* 801BA37C  38 00 00 00 */	li r0, 0
/* 801BA380  90 1F 0C F8 */	stw r0, 0xcf8(r31)
lbl_801BA384:
/* 801BA384  7F E3 FB 78 */	mr r3, r31
/* 801BA388  4B FF ED DD */	bl deleteExplain__14dMenu_DmapBg_cFv
/* 801BA38C  80 7F 0D 20 */	lwz r3, 0xd20(r31)
/* 801BA390  28 03 00 00 */	cmplwi r3, 0
/* 801BA394  41 82 00 1C */	beq lbl_801BA3B0
/* 801BA398  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA39C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801BA3A0  7D 89 03 A6 */	mtctr r12
/* 801BA3A4  4E 80 04 21 */	bctrl 
/* 801BA3A8  38 00 00 00 */	li r0, 0
/* 801BA3AC  90 1F 0D 20 */	stw r0, 0xd20(r31)
lbl_801BA3B0:
/* 801BA3B0  80 7F 0D 1C */	lwz r3, 0xd1c(r31)
/* 801BA3B4  28 03 00 00 */	cmplwi r3, 0
/* 801BA3B8  41 82 00 40 */	beq lbl_801BA3F8
/* 801BA3BC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801BA3C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA3C4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801BA3C8  7D 89 03 A6 */	mtctr r12
/* 801BA3CC  4E 80 04 21 */	bctrl 
/* 801BA3D0  80 7F 0D 1C */	lwz r3, 0xd1c(r31)
/* 801BA3D4  28 03 00 00 */	cmplwi r3, 0
/* 801BA3D8  41 82 00 18 */	beq lbl_801BA3F0
/* 801BA3DC  38 80 00 01 */	li r4, 1
/* 801BA3E0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801BA3E4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA3E8  7D 89 03 A6 */	mtctr r12
/* 801BA3EC  4E 80 04 21 */	bctrl 
lbl_801BA3F0:
/* 801BA3F0  38 00 00 00 */	li r0, 0
/* 801BA3F4  90 1F 0D 1C */	stw r0, 0xd1c(r31)
lbl_801BA3F8:
/* 801BA3F8  80 7F 0D 24 */	lwz r3, 0xd24(r31)
/* 801BA3FC  28 03 00 00 */	cmplwi r3, 0
/* 801BA400  41 82 00 24 */	beq lbl_801BA424
/* 801BA404  41 82 00 18 */	beq lbl_801BA41C
/* 801BA408  38 80 00 01 */	li r4, 1
/* 801BA40C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA410  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA414  7D 89 03 A6 */	mtctr r12
/* 801BA418  4E 80 04 21 */	bctrl 
lbl_801BA41C:
/* 801BA41C  38 00 00 00 */	li r0, 0
/* 801BA420  90 1F 0D 24 */	stw r0, 0xd24(r31)
lbl_801BA424:
/* 801BA424  80 7F 0C B4 */	lwz r3, 0xcb4(r31)
/* 801BA428  28 03 00 00 */	cmplwi r3, 0
/* 801BA42C  41 82 00 18 */	beq lbl_801BA444
/* 801BA430  38 80 00 01 */	li r4, 1
/* 801BA434  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA438  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA43C  7D 89 03 A6 */	mtctr r12
/* 801BA440  4E 80 04 21 */	bctrl 
lbl_801BA444:
/* 801BA444  38 00 00 00 */	li r0, 0
/* 801BA448  90 1F 0C B4 */	stw r0, 0xcb4(r31)
/* 801BA44C  80 7F 0C B8 */	lwz r3, 0xcb8(r31)
/* 801BA450  28 03 00 00 */	cmplwi r3, 0
/* 801BA454  41 82 00 24 */	beq lbl_801BA478
/* 801BA458  41 82 00 18 */	beq lbl_801BA470
/* 801BA45C  38 80 00 01 */	li r4, 1
/* 801BA460  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA464  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA468  7D 89 03 A6 */	mtctr r12
/* 801BA46C  4E 80 04 21 */	bctrl 
lbl_801BA470:
/* 801BA470  38 00 00 00 */	li r0, 0
/* 801BA474  90 1F 0C B8 */	stw r0, 0xcb8(r31)
lbl_801BA478:
/* 801BA478  80 7F 0C DC */	lwz r3, 0xcdc(r31)
/* 801BA47C  28 03 00 00 */	cmplwi r3, 0
/* 801BA480  41 82 00 24 */	beq lbl_801BA4A4
/* 801BA484  41 82 00 18 */	beq lbl_801BA49C
/* 801BA488  38 80 00 01 */	li r4, 1
/* 801BA48C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA490  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA494  7D 89 03 A6 */	mtctr r12
/* 801BA498  4E 80 04 21 */	bctrl 
lbl_801BA49C:
/* 801BA49C  38 00 00 00 */	li r0, 0
/* 801BA4A0  90 1F 0C DC */	stw r0, 0xcdc(r31)
lbl_801BA4A4:
/* 801BA4A4  80 7F 0C D8 */	lwz r3, 0xcd8(r31)
/* 801BA4A8  28 03 00 00 */	cmplwi r3, 0
/* 801BA4AC  41 82 00 18 */	beq lbl_801BA4C4
/* 801BA4B0  38 80 00 01 */	li r4, 1
/* 801BA4B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA4B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA4BC  7D 89 03 A6 */	mtctr r12
/* 801BA4C0  4E 80 04 21 */	bctrl 
lbl_801BA4C4:
/* 801BA4C4  38 00 00 00 */	li r0, 0
/* 801BA4C8  90 1F 0C D8 */	stw r0, 0xcd8(r31)
/* 801BA4CC  3B 40 00 00 */	li r26, 0
/* 801BA4D0  3B A0 00 00 */	li r29, 0
lbl_801BA4D4:
/* 801BA4D4  7F 7F EA 14 */	add r27, r31, r29
/* 801BA4D8  80 7B 0D 08 */	lwz r3, 0xd08(r27)
/* 801BA4DC  28 03 00 00 */	cmplwi r3, 0
/* 801BA4E0  41 82 00 24 */	beq lbl_801BA504
/* 801BA4E4  41 82 00 18 */	beq lbl_801BA4FC
/* 801BA4E8  38 80 00 01 */	li r4, 1
/* 801BA4EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA4F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA4F4  7D 89 03 A6 */	mtctr r12
/* 801BA4F8  4E 80 04 21 */	bctrl 
lbl_801BA4FC:
/* 801BA4FC  38 00 00 00 */	li r0, 0
/* 801BA500  90 1B 0D 08 */	stw r0, 0xd08(r27)
lbl_801BA504:
/* 801BA504  80 7B 0D 10 */	lwz r3, 0xd10(r27)
/* 801BA508  28 03 00 00 */	cmplwi r3, 0
/* 801BA50C  41 82 00 24 */	beq lbl_801BA530
/* 801BA510  41 82 00 18 */	beq lbl_801BA528
/* 801BA514  38 80 00 01 */	li r4, 1
/* 801BA518  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA51C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA520  7D 89 03 A6 */	mtctr r12
/* 801BA524  4E 80 04 21 */	bctrl 
lbl_801BA528:
/* 801BA528  38 00 00 00 */	li r0, 0
/* 801BA52C  90 1B 0D 10 */	stw r0, 0xd10(r27)
lbl_801BA530:
/* 801BA530  3B 5A 00 01 */	addi r26, r26, 1
/* 801BA534  2C 1A 00 02 */	cmpwi r26, 2
/* 801BA538  3B BD 00 04 */	addi r29, r29, 4
/* 801BA53C  41 80 FF 98 */	blt lbl_801BA4D4
/* 801BA540  80 7F 0C E8 */	lwz r3, 0xce8(r31)
/* 801BA544  28 03 00 00 */	cmplwi r3, 0
/* 801BA548  41 82 00 18 */	beq lbl_801BA560
/* 801BA54C  38 80 00 01 */	li r4, 1
/* 801BA550  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA554  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA558  7D 89 03 A6 */	mtctr r12
/* 801BA55C  4E 80 04 21 */	bctrl 
lbl_801BA560:
/* 801BA560  38 00 00 00 */	li r0, 0
/* 801BA564  90 1F 0C E8 */	stw r0, 0xce8(r31)
/* 801BA568  80 7F 0C EC */	lwz r3, 0xcec(r31)
/* 801BA56C  28 03 00 00 */	cmplwi r3, 0
/* 801BA570  41 82 00 24 */	beq lbl_801BA594
/* 801BA574  41 82 00 18 */	beq lbl_801BA58C
/* 801BA578  38 80 00 01 */	li r4, 1
/* 801BA57C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA580  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BA584  7D 89 03 A6 */	mtctr r12
/* 801BA588  4E 80 04 21 */	bctrl 
lbl_801BA58C:
/* 801BA58C  38 00 00 00 */	li r0, 0
/* 801BA590  90 1F 0C EC */	stw r0, 0xcec(r31)
lbl_801BA594:
/* 801BA594  80 1F 0C 9C */	lwz r0, 0xc9c(r31)
/* 801BA598  28 00 00 00 */	cmplwi r0, 0
/* 801BA59C  41 82 00 2C */	beq lbl_801BA5C8
/* 801BA5A0  48 07 D5 B5 */	bl getTalkHeap__12dMsgObject_cFv
/* 801BA5A4  80 1F 0C 9C */	lwz r0, 0xc9c(r31)
/* 801BA5A8  7C 03 00 40 */	cmplw r3, r0
/* 801BA5AC  40 82 00 0C */	bne lbl_801BA5B8
/* 801BA5B0  38 60 00 00 */	li r3, 0
/* 801BA5B4  48 07 D5 2D */	bl setTalkHeap__12dMsgObject_cFPv
lbl_801BA5B8:
/* 801BA5B8  80 7F 0C 9C */	lwz r3, 0xc9c(r31)
/* 801BA5BC  4B E5 4B F1 */	bl mDoExt_destroyExpHeap__FP10JKRExpHeap
/* 801BA5C0  38 00 00 00 */	li r0, 0
/* 801BA5C4  90 1F 0C 9C */	stw r0, 0xc9c(r31)
lbl_801BA5C8:
/* 801BA5C8  38 7F 0D 34 */	addi r3, r31, 0xd34
/* 801BA5CC  38 80 FF FF */	li r4, -1
/* 801BA5D0  48 08 F9 79 */	bl __dt__10dMsgFlow_cFv
/* 801BA5D4  38 7F 00 04 */	addi r3, r31, 4
/* 801BA5D8  38 80 00 00 */	li r4, 0
/* 801BA5DC  48 00 81 D9 */	bl __dt__16dMenuMapCommon_cFv
/* 801BA5E0  7F C0 07 35 */	extsh. r0, r30
/* 801BA5E4  40 81 00 0C */	ble lbl_801BA5F0
/* 801BA5E8  7F E3 FB 78 */	mr r3, r31
/* 801BA5EC  48 11 47 51 */	bl __dl__FPv
lbl_801BA5F0:
/* 801BA5F0  7F E3 FB 78 */	mr r3, r31
/* 801BA5F4  39 61 00 20 */	addi r11, r1, 0x20
/* 801BA5F8  48 1A 7C 25 */	bl _restgpr_26
/* 801BA5FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BA600  7C 08 03 A6 */	mtlr r0
/* 801BA604  38 21 00 20 */	addi r1, r1, 0x20
/* 801BA608  4E 80 00 20 */	blr 
