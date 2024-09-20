<template>
  <q-page class="flex flex-center">
    <div>
      <div class="row q-py-sm">
        <q-input class="col-10" v-model="teaCompany" label="Tea Company" />
        <q-input class="col-10" v-model="teaName" label="Tea Name" />
        <q-input
          class="col-10"
          v-model="temperature"
          label="Temperature(in Celsius)"
          type="number"
        />
        <q-input
          class="col-10"
          v-model="brewTime"
          label="Brew Time(in seconds)"
          type="number"
        />
      </div>
      <div>
        <q-btn
          label="Add"
          color="primary"
          icon="add_circle"
          @click="add_onclick"
          class="col-6"
        />
      </div>
    </div>
  </q-page>
</template>

<script setup>
import { ref } from "vue";
const teaCompany = ref("");
const teaName = ref("");
const temperature = ref(100);
const brewTime = ref(120);
const add_onclick = () => {
  console.log("Add new review");
  console.log("Tea Company: ", teaCompany.value);
  console.log("Tea Name: ", teaName.value);
  console.log("Temperature: ", temperature.value);
  console.log("Brew Time: ", brewTime.value);
};
</script>
