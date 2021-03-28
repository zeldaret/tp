lbl_8035CC84:
/* 8035CC84  54 65 07 FE */	clrlwi r5, r3, 0x1f
/* 8035CC88  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035CC8C  38 05 FF FF */	addi r0, r5, -1
/* 8035CC90  7C 05 00 34 */	cntlzw r5, r0
/* 8035CC94  80 04 01 EC */	lwz r0, 0x1ec(r4)
/* 8035CC98  54 A5 DE 3E */	rlwinm r5, r5, 0x1b, 0x18, 0x1f
/* 8035CC9C  54 63 07 BC */	rlwinm r3, r3, 0, 0x1e, 0x1e
/* 8035CCA0  50 A0 07 FE */	rlwimi r0, r5, 0, 0x1f, 0x1f
/* 8035CCA4  38 63 FF FE */	addi r3, r3, -2
/* 8035CCA8  90 04 01 EC */	stw r0, 0x1ec(r4)
/* 8035CCAC  7C 60 00 34 */	cntlzw r0, r3
/* 8035CCB0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8035CCB4  80 04 01 EC */	lwz r0, 0x1ec(r4)
/* 8035CCB8  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8035CCBC  90 04 01 EC */	stw r0, 0x1ec(r4)
/* 8035CCC0  80 04 01 FC */	lwz r0, 0x1fc(r4)
/* 8035CCC4  50 A0 07 FE */	rlwimi r0, r5, 0, 0x1f, 0x1f
/* 8035CCC8  90 04 01 FC */	stw r0, 0x1fc(r4)
/* 8035CCCC  80 04 01 FC */	lwz r0, 0x1fc(r4)
/* 8035CCD0  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8035CCD4  90 04 01 FC */	stw r0, 0x1fc(r4)
/* 8035CCD8  4E 80 00 20 */	blr 
