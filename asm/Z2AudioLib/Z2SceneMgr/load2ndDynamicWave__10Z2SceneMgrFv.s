lbl_802BA120:
/* 802BA120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BA124  7C 08 02 A6 */	mflr r0
/* 802BA128  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BA12C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BA130  7C 7F 1B 78 */	mr r31, r3
/* 802BA134  88 83 00 15 */	lbz r4, 0x15(r3)
/* 802BA138  88 03 00 16 */	lbz r0, 0x16(r3)
/* 802BA13C  7C 04 00 40 */	cmplw r4, r0
/* 802BA140  41 82 00 80 */	beq lbl_802BA1C0
/* 802BA144  88 9F 00 10 */	lbz r4, 0x10(r31)
/* 802BA148  28 04 00 00 */	cmplwi r4, 0
/* 802BA14C  41 82 00 18 */	beq lbl_802BA164
/* 802BA150  48 00 04 79 */	bl eraseSeWave__10Z2SceneMgrFUl
/* 802BA154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA158  41 82 00 0C */	beq lbl_802BA164
/* 802BA15C  38 00 00 00 */	li r0, 0
/* 802BA160  98 1F 00 10 */	stb r0, 0x10(r31)
lbl_802BA164:
/* 802BA164  88 9F 00 16 */	lbz r4, 0x16(r31)
/* 802BA168  28 04 00 00 */	cmplwi r4, 0
/* 802BA16C  41 82 00 1C */	beq lbl_802BA188
/* 802BA170  7F E3 FB 78 */	mr r3, r31
/* 802BA174  48 00 04 55 */	bl eraseSeWave__10Z2SceneMgrFUl
/* 802BA178  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA17C  41 82 00 0C */	beq lbl_802BA188
/* 802BA180  38 00 00 00 */	li r0, 0
/* 802BA184  98 1F 00 16 */	stb r0, 0x16(r31)
lbl_802BA188:
/* 802BA188  88 9F 00 15 */	lbz r4, 0x15(r31)
/* 802BA18C  28 04 00 00 */	cmplwi r4, 0
/* 802BA190  41 82 00 28 */	beq lbl_802BA1B8
/* 802BA194  28 04 00 7F */	cmplwi r4, 0x7f
/* 802BA198  41 82 00 20 */	beq lbl_802BA1B8
/* 802BA19C  7F E3 FB 78 */	mr r3, r31
/* 802BA1A0  48 00 05 65 */	bl loadSeWave__10Z2SceneMgrFUl
/* 802BA1A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA1A8  41 82 00 10 */	beq lbl_802BA1B8
/* 802BA1AC  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 802BA1B0  98 1F 00 16 */	stb r0, 0x16(r31)
/* 802BA1B4  48 00 00 0C */	b lbl_802BA1C0
lbl_802BA1B8:
/* 802BA1B8  38 00 00 00 */	li r0, 0
/* 802BA1BC  98 1F 00 16 */	stb r0, 0x16(r31)
lbl_802BA1C0:
/* 802BA1C0  88 1F 00 0F */	lbz r0, 0xf(r31)
/* 802BA1C4  88 9F 00 10 */	lbz r4, 0x10(r31)
/* 802BA1C8  7C 00 20 40 */	cmplw r0, r4
/* 802BA1CC  41 82 00 54 */	beq lbl_802BA220
/* 802BA1D0  28 04 00 00 */	cmplwi r4, 0
/* 802BA1D4  41 82 00 1C */	beq lbl_802BA1F0
/* 802BA1D8  7F E3 FB 78 */	mr r3, r31
/* 802BA1DC  48 00 03 ED */	bl eraseSeWave__10Z2SceneMgrFUl
/* 802BA1E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA1E4  41 82 00 0C */	beq lbl_802BA1F0
/* 802BA1E8  38 00 00 00 */	li r0, 0
/* 802BA1EC  98 1F 00 10 */	stb r0, 0x10(r31)
lbl_802BA1F0:
/* 802BA1F0  88 9F 00 0F */	lbz r4, 0xf(r31)
/* 802BA1F4  28 04 00 00 */	cmplwi r4, 0
/* 802BA1F8  41 82 00 20 */	beq lbl_802BA218
/* 802BA1FC  7F E3 FB 78 */	mr r3, r31
/* 802BA200  48 00 05 05 */	bl loadSeWave__10Z2SceneMgrFUl
/* 802BA204  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA208  41 82 00 10 */	beq lbl_802BA218
/* 802BA20C  88 1F 00 0F */	lbz r0, 0xf(r31)
/* 802BA210  98 1F 00 10 */	stb r0, 0x10(r31)
/* 802BA214  48 00 00 0C */	b lbl_802BA220
lbl_802BA218:
/* 802BA218  38 00 00 00 */	li r0, 0
/* 802BA21C  98 1F 00 10 */	stb r0, 0x10(r31)
lbl_802BA220:
/* 802BA220  88 1F 00 13 */	lbz r0, 0x13(r31)
/* 802BA224  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 802BA228  7C 00 20 40 */	cmplw r0, r4
/* 802BA22C  41 82 00 54 */	beq lbl_802BA280
/* 802BA230  28 04 00 00 */	cmplwi r4, 0
/* 802BA234  41 82 00 1C */	beq lbl_802BA250
/* 802BA238  7F E3 FB 78 */	mr r3, r31
/* 802BA23C  48 00 03 F5 */	bl eraseBgmWave__10Z2SceneMgrFUl
/* 802BA240  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA244  41 82 00 0C */	beq lbl_802BA250
/* 802BA248  38 00 00 00 */	li r0, 0
/* 802BA24C  98 1F 00 14 */	stb r0, 0x14(r31)
lbl_802BA250:
/* 802BA250  88 9F 00 13 */	lbz r4, 0x13(r31)
/* 802BA254  28 04 00 00 */	cmplwi r4, 0
/* 802BA258  41 82 00 20 */	beq lbl_802BA278
/* 802BA25C  7F E3 FB 78 */	mr r3, r31
/* 802BA260  48 00 05 11 */	bl loadBgmWave__10Z2SceneMgrFUl
/* 802BA264  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA268  41 82 00 10 */	beq lbl_802BA278
/* 802BA26C  88 1F 00 13 */	lbz r0, 0x13(r31)
/* 802BA270  98 1F 00 14 */	stb r0, 0x14(r31)
/* 802BA274  48 00 00 0C */	b lbl_802BA280
lbl_802BA278:
/* 802BA278  38 00 00 00 */	li r0, 0
/* 802BA27C  98 1F 00 14 */	stb r0, 0x14(r31)
lbl_802BA280:
/* 802BA280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BA284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA288  7C 08 03 A6 */	mtlr r0
/* 802BA28C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA290  4E 80 00 20 */	blr 
