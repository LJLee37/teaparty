<template>
  <q-page class="flex flex-center">
    <div>
      <div class="row">
        <q-input
          class="col-12 q-mb-sm"
          v-model="teaCompany"
          label="Tea Company"
        />
        <q-input class="col-12 q-mb-sm" v-model="teaName" label="Tea Name" />
        <q-input class="col-12 q-mb-sm" v-model="leafType" label="Leaf Type" />
        <q-input
          class="col-xs-12 col-sm-6"
          v-model.number="temperature"
          label="Temperature(in Celsius)"
          type="number"
        />
        <q-input
          class="col-xs-12 col-sm-6"
          v-model.number="brewTime"
          label="Brew Time(in seconds)"
          type="number"
        />
        <q-input
          class="col-12 q-mb-sm"
          v-model="review"
          label="Review"
          type="textarea"
        />
        <q-btn
          label="Add"
          color="primary"
          icon="add_circle"
          @click="add_onclick"
          class="q-mt-xl col-xs-12 col-sm-4 col-md-3"
        />
      </div>
    </div>
  </q-page>
</template>

<script setup>
import { ref } from "vue";
const teaCompany = ref("");
const teaName = ref("");
const leafType = ref("");
const temperature = ref(100);
const brewTime = ref(120);
const review = ref("");
const LEAF_TYPES = ["teabag", "loose leaf"];
const add_onclick = () => {
  console.log("Add new review");
  console.log("Tea Company: ", teaCompany.value);
  console.log("Tea Name: ", teaName.value);
  console.log("Temperature: ", temperature.value);
  console.log("Brew Time: ", brewTime.value);
};
</script>
